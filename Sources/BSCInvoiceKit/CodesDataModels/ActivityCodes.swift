//
//  ActivityCodes.swift
//  invoicekit-ios
//
//  Created by Martin Prusa on 3/6/20.
//

import Foundation

public enum ActivityCodes: Int {
    case analysis = 01
    case programming = 02
    case testing = 03
    case projecManagers = 05
    case technicalServices = 06
    case consultacy = 07

    public var description: String {
        switch self {
            case .analysis:
                return "ANALYSIS: pro ty, kteří se zabývají primárně analýzou"
            case .programming:
                return "PROGRAMMING: pro ty, kteří se zabývají primárně vývojem, spadají tam i role jako je např. Tech Lead"
            case .testing:
                return "TESTING: pro ty, kteří se primárně zabývají testováním aplikací"
            case .projecManagers:
                return "PROJECT MANA: pro programové a produktové manažery"
            case .technicalServices:
                return "TECHN.SERVIC: pro ty, kteří se zabývají supportem a deploymentem, typicky pro kolegy z CC (IM) a TP"
            case .consultacy:
                return "CONSULTANCY: pro ty, kteří se zabývají konzultační činností"
        }
    }
}
