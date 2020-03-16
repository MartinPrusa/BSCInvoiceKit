//
//  LoggedUser.swift
//  BSCInvoiceKit
//
//  Created by Martin Prusa on 12/11/19.
//

import Foundation
public struct LoggedUser: Decodable {
    public let displayName: String
    public let emailAddress: String
    public let name: String

    public init(displayName: String, emailAddress: String, name: String) {
        self.displayName = displayName
        self.emailAddress = emailAddress
        self.name = name
    }
}
