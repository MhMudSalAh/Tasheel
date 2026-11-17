//
//  TransactionState.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import Foundation

enum TransactionsState {
    case idle
    case loading
    case loaded
    case failed(String)
}
