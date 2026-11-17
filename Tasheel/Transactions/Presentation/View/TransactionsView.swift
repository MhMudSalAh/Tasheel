//
//  ContentView.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import SwiftUI

struct TransactionsView: View {

    @State private var viewModel: TransactionsViewModel

    init(viewModel: TransactionsViewModel) {
        _viewModel = State(initialValue: viewModel)
    }

    var body: some View {
        NavigationStack {
            content
                .navigationTitle("Transactions")
                .navigationBarTitleDisplayMode(.large)
                .task {
                    await viewModel.viewDidLoad()
                }
                .refreshable {
                    await viewModel.refreshTransactions()
                }
        }
    }

    @ViewBuilder
    private var content: some View {
        switch viewModel.state {
        case .idle, .loading:
            ProgressView("Loading transactions...")
        case .loaded:
            transactionsList
        case .failed(let message):
            VStack(spacing: 20) {
                Text(message)
                Button("Try Again") {
                    Task {
                        await viewModel.refreshTransactions()
                    }
                }
            }
        }
    }

    private var transactionsList: some View {
        List {
            ForEach(viewModel.transactions) { transaction in
                TransactionView(
                    transaction,
                    action: viewModel.didSelectTransaction
                )
                .buttonStyle(.plain)
            }
        }
        .listStyle(.plain)
    }
}
