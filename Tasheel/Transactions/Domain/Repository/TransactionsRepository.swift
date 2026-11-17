//
//  TransactionsRepository.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import Foundation

protocol TransactionsRepository {
    func fetchTransactions() async -> Result<[TransactionEntity], Error>
}
