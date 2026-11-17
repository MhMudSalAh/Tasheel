//
//  TransactionsLocalDataSource.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

enum TransactionsLocalDataSource {
    static var transactions: [TransactionDTO] {
        [
            TransactionDTO(
            id: 1,
            amount: 100,
            status: "Success",
            createdAt: "20-11-20026",
            updatedAt: "20-11-20026",
            resourceType: "CIB"
            ),
            TransactionDTO(
            id: 2,
            amount: 80,
            status: "Fail",
            createdAt: "16-11-20026",
            updatedAt: "16-11-20026",
            resourceType: "QNB"
            )
        ]
    }
}
