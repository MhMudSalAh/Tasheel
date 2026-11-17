//
//  TransactionsFactory.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

@MainActor
struct TransactionsFactory {
    
    static func makeView() -> TransactionsView {
        let repository = TransactionsRepositoryAPI()
        let useCase = TransactionsUseCase(repository: repository)
        let viewModel = TransactionsViewModel(useCase: useCase)
        return TransactionsView(viewModel: viewModel)
    }
}
