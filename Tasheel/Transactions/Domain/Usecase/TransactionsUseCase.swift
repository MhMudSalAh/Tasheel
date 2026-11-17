//
//  TransactionsUseCase.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

public struct TransactionsUseCase: Sendable {
    private let repository: TransactionsRepository
    
    
    init(repository: TransactionsRepository) {
        self.repository = repository
    }
    
    @concurrent func fetchTransactions() async -> Result<[TransactionEntity], Error> {
        await repository.fetchTransactions()
    }
}
