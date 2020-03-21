//
//  ActivityCodes.swift
//  invoicekit-ios
//
//  Created by Martin Prusa on 3/6/20.
//

import Foundation

public enum ActivityCodes: Int, CaseIterable {
    case programming = 02
    case analysis = 01
    case testing = 03
    case projecManagers = 05
    case technicalServices = 06
    case consultacy = 07

    public var description: String {
        switch self {
            case .programming:
                return "PROGRAMMING"
            case .analysis:
                return "ANALYSIS"
            case .testing:
                return "TESTING"
            case .projecManagers:
                return "PROJECT MANA"
            case .technicalServices:
                return "TECHN.SERVIC"
            case .consultacy:
                return "CONSULTANCY"
        }
    }
}
