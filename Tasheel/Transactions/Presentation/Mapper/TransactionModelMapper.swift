//
//  TransactionModelMapper.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import Foundation

enum TransactionModelMapper {

    static func toModel(
        _ entity: TransactionEntity
    ) -> TransactionModel {

        TransactionModel(
            id: entity.id,
            amount: entity.amount.asCurrency(),
            status: entity.status,
            createdAt: entity.createdAt,
            updatedAt: entity.updatedAt,
            resourceType: entity.resourceType
        )
    }
}
