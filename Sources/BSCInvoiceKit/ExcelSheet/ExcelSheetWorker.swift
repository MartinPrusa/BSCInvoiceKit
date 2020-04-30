//
//  File.swift
//  
//
//  Created by Martin Prusa on 3/30/20.
//

import Foundation
import Combine
import MKit

public final class ExcelSheetWorker {
    public init() { }

    public func excelSheetPublisher(data: ExcelSheetRequestData, server: ExcelSheetEndpointServer, sslCertificate: SSLCertificate) -> AnyPublisher<UrlResponseResource.ResultConstruct, UrlResponseResource.ErrorResponse> {

        let endpoint = ExcelSheetEndpoint.excelSheet(data: data)
        endpoint.setServer(server: server)
        let requestConfig = endpoint.requestFactoryConfigurator()
        let request = URLRequestFactory(config: requestConfig).request
        let resource = UrlResponseResource(request: request, result: nil, isSslPinningEnabled: true)
        URLSessionFactory.shared.sslCertificate = sslCertificate

        return URLSessionFactory.shared.plainLoadPublisher(resource: resource)
    }
}
