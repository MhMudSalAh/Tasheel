//
//  TransactionsRepositoryAPI.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import Foundation

struct TransactionsRepositoryAPI: TransactionsRepository {
    func fetchTransactions() async -> Result<[TransactionEntity], any Error> {
        do {
            try await Task.sleep(for: .seconds(3))
                        
            let transactions = TransactionsLocalDataSource.transactions.compactMap {
                TransactionEntityMapper.toEntity($0)
            }
            
            return .success(transactions)
            
        } catch {
            return .failure(error)
        }
    }
    
}
