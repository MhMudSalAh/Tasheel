//
//  TransactionsViewModel.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import Combine
import Foundation
import Observation

@MainActor
@Observable
final class TransactionsViewModel: ObservableObject {
    
    private let useCase: TransactionsUseCase
    
    private(set) var state: TransactionsState = .idle
    private(set) var isRefreshing = false
    private(set) var transactions: [TransactionModel] = []
    
    
    init(useCase: TransactionsUseCase) {
        self.useCase = useCase
    }
    
    func viewDidLoad() async {
        guard case .idle = state else { return }
        await fetchTransactions()
    }
    
    func refreshTransactions() async {
        await fetchTransactions(isRefreshing: true)
    }
    
    private func fetchTransactions(isRefreshing: Bool = false) async {
        if isRefreshing {
            self.isRefreshing = true
        } else {
            state = .loading
        }
        
        let result = await useCase.fetchTransactions()
        switch result {
        case .success(let entities):
            transactions = entities.map {
                TransactionModelMapper.toModel($0)
            }
            state = .loaded
        case .failure(let error):
            state = .failed(error.localizedDescription)
        }
        self.isRefreshing = false
    }
    
    func didSelectTransaction() {
        // TODO: -
    }
}
