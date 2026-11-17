//
//  TransactionModel.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import Foundation

struct TransactionModel: Identifiable {
    
    let id: Int
    let amount: String
    let status: String
    let createdAt: String
    let updatedAt: String
    let resourceType: String
}
