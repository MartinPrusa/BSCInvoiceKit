//
//  LoginEndpoint.swift
//  BSCInvoiceKit
//
//  Created by Martin Prusa on 12/11/19.
//

import Foundation
import MKit

enum LoginEndpoint: EndpointTarget {
    case login(username: String, base64Credentials: String)

    var serverUrlString: String {
        return "https://support.bsc-ideas.com/jira"
    }

    ///rest/api/2/user?username=fred
    public var urlString: String {
        return "/rest/api/2/user"
    }

    func requestFactoryConfigurator() -> URLRequestFactoryConfigurator {
        var configurator = baseRequestFactoryConfigurator()

        switch self {
            case .login(let username, let base64Credentials):
                configurator.httpUrlQueryParameters = ["username": username]
                configurator.httpHeadParameters = ["Authorization": "Basic \(base64Credentials)"]
        }

        return configurator
    }
}
