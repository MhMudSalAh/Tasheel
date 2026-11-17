//
//  TransactionDTO.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import Foundation

struct TransactionDTO {
    
    let id: Int
    let amount: Double
    let status: String
    let createdAt: String
    let updatedAt: String
    let resourceType: String
}

extension TransactionDTO: Codable {
    enum CodingKeys: String, CodingKey {
        case id
        case amount
        case status
        case createdAt
        case updatedAt
        case resourceType = "resource_type"
    }
}
