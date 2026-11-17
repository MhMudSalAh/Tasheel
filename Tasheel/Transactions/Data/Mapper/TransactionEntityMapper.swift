//
//  TransactionEntityMapper.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import Foundation

enum TransactionEntityMapper {

    static func toEntity(
        _ dto: TransactionDTO
    ) -> TransactionEntity {

        TransactionEntity(
            id: dto.id,
            amount: dto.amount,
            status: dto.status,
            createdAt: dto.createdAt,
            updatedAt: dto.updatedAt,
            resourceType: dto.resourceType
        )
    }
}
