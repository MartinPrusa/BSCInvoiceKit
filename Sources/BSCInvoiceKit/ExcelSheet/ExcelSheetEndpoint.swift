//
//  File.swift
//  
//
//  Created by Martin Prusa on 3/30/20.
//

import Foundation
import MKit

public enum ExcelSheetEndpointServer {
    case debug
    case staging
    case production
}

fileprivate var _serverEndpoing: ExcelSheetEndpointServer = .debug

enum ExcelSheetEndpoint: EndpointTarget {
    case excelSheet(data: ExcelSheetRequestData)

    var serverUrlString: String {
        switch _serverEndpoing {
            case .debug:
                return "http://localhost:3000"
            case .staging:
                return "https://bsc-invoice-npm.herokuapp.com"
            case .production:
                return "https://bsc-invoice-npm.herokuapp.com"
        }
    }

    public var urlString: String {
        return "/"
    }

    func setServer(server: ExcelSheetEndpointServer) {
        _serverEndpoing = server
    }

    func requestFactoryConfigurator() -> URLRequestFactoryConfigurator {

        var configurator = baseRequestFactoryConfigurator()

        switch self {
            case .excelSheet(let data):
                configurator.httpMethod = .post
                configurator.httpBodyParameters = data.mapToDict()
        }

        return configurator
    }
}
