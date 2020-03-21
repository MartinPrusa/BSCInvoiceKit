//
//  CostCenters.swift
//  BSCInvoiceKit
//
//  Created by Martin Prusa on 12/11/19.
//

import Foundation

public enum CostCentersCodes: Int, CaseIterable {
    case strategicManagementDepartment = 07000071
    case humanResourcesDepartment = 07000072
    case financeAccountingDepartment = 07000073
    case operationsDepartment = 07000091
    case ictDepartment = 07000092
    case marketingDepartment = 026
    case salesDepartment = 020
    case geminiBusinessLine = 021
    case gFiveTeam = 02100021
    case customerServicesDepartment = 02100028
    case gCoreTeam = 02100212
    case cumulusTeam = 02100213
    case tatraTeaTeam = 02100214
    case kruberaTeam = 02100216
    case deltaTeam = 02100222
    case successTeam = 02100223
    case topTeam = 02100225
    case urukhaiTeam = 02100226
    case regionD = 02100227
    case newBusiness = 02100229
    case businessIntelligenceBusinessLine = 022
    case backOfficeSystemsBusinessLine = 024

    public var description: String {
        switch self {
            case .strategicManagementDepartment:
                return "Strategic Management Department"
            case .humanResourcesDepartment:
                return "Human Resources Department"
            case .financeAccountingDepartment:
                return "Finance and Accounting Department"
            case .operationsDepartment:
                return "Operations Department"
            case .ictDepartment:
                return "ICT Department"
            case .marketingDepartment:
                return "Marketing Department"
            case .salesDepartment:
                return "Sales Department"
            case .geminiBusinessLine:
                return "GEMINI Business Line"
            case .gFiveTeam:
                return "GFiveTeam"
            case .customerServicesDepartment:
                return "Customer Services Department"
            case .gCoreTeam:
                return "G-Core Team"
            case .cumulusTeam:
                return "Cumulus Team"
            case .tatraTeaTeam:
                return "Tatra Tea Team"
            case .kruberaTeam:
                return "Krubera Team"
            case .deltaTeam:
                return "Delta Team"
            case .successTeam:
                return "Success Team"
            case .topTeam:
                return "Top Team"
            case .urukhaiTeam:
                return "Uruk-hai Team"
            case .regionD:
                return "Region D"
            case .newBusiness:
                return "New Business"
            case .businessIntelligenceBusinessLine:
                return "Business Intelligence Business Line"
            case .backOfficeSystemsBusinessLine:
                return "BackOffice Systems Business Line"
        }
    }
}
