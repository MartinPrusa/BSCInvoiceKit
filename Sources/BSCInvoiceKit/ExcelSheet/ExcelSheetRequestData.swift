//
//  File.swift
//  
//
//  Created by Martin Prusa on 3/30/20.
//

import Foundation

public struct ExcelSheetRequestData {
    private let dateFrom: String
    private let dateTo: String
    private let invoiceDate: String
    private let hourRate: String
    private let activityCode: String
    private let costCenterCode: String
    private let creds: String
    private let filename: String
    private let username: String
    private let vatRate: String

    public init(dateFrom: String, dateTo: String, invoiceDate: String, hourRate: String, activityCode: String, costCenterCode: String, creds: String, filename: String, username: String, vatRate: String = "21") {
        self.dateFrom = dateFrom
        self.dateTo = dateTo
        self.invoiceDate = invoiceDate
        self.hourRate = hourRate
        self.activityCode = activityCode
        self.costCenterCode = costCenterCode
        self.creds = creds
        self.filename = filename
        self.username = username
        self.vatRate = vatRate
    }

    func mapToDict() -> [String: String] {
        return [
            "dateFrom": dateFrom,
            "dateTo": dateTo,
            "invoiceDate": invoiceDate,
            "hourRate": hourRate,
            "activityCode": activityCode,
            "costCenterCode": costCenterCode,
            "creds": creds,
            "filename": filename,
            "username": username,
            "vatRate": vatRate
        ]
    }
}
