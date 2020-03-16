//
//  LoginWorker.swift
//  BSCInvoiceKit
//
//  Created by Martin Prusa on 12/11/19.
//

import Foundation
import Combine

public enum LoginError: Error {
    case unableToEncodeCredentials
}

extension LoginError: LocalizedError {
    public var errorDescription: String? {
        switch self {
            case .unableToEncodeCredentials:
                return NSLocalizedString("Unable to encode your credentials.", comment: "")
        }
    }
}

public final class LoginWorker {
    public init() { }

    public func login(with username: String, password: String, completion: @escaping (Result<UrlResponseResource.ResultConstruct, UrlResponseResource.ErrorResponse>) -> Void) {
        guard let base64Credentials = "\(username):\(password)".data(using: .utf8)?.base64EncodedString() else {

            let response = UrlResponseResource.ErrorResponse(response: nil, err: LoginError.unableToEncodeCredentials, data: nil)
            completion(.failure(response))
            return
        }

        let requestConfig = LoginEndpoint.login(username: username, base64Credentials: base64Credentials).requestFactoryConfigurator()
        let request = URLRequestFactory.init(config: requestConfig).request
        let resource = UrlResponseResource(request: request, result: nil)

        _ = URLSessionFactory.shared.plainLoad(resource: resource) { result in
            completion(result)
        }
    }

    public func loginPublisher(with username: String, password: String) -> AnyPublisher<LoggedUser, UrlResponseResource.ErrorResponse> {
        guard let base64Credentials = "\(username):\(password)".data(using: .utf8)?.base64EncodedString() else {
            let response = UrlResponseResource.ErrorResponse(response: nil, err: LoginError.unableToEncodeCredentials, data: nil)
            let publisher = Fail<LoggedUser, UrlResponseResource.ErrorResponse>(error: response)
            return AnyPublisher<LoggedUser, UrlResponseResource.ErrorResponse>(publisher)
        }

        let requestConfig = LoginEndpoint.login(username: username, base64Credentials: base64Credentials).requestFactoryConfigurator()
        let request = URLRequestFactory.init(config: requestConfig).request
        let resource = UrlResponseResource(request: request, result: nil)

        return URLSessionFactory.shared.plainLoadDecodedPublisher(resource: resource, decodable: LoggedUser.self)
    }
}
