//
//  TransactionView.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import SwiftUI

struct TransactionView: View {
    
    @State private var transaction: TransactionModel
    let action: () -> ()?

    init(
        _ transaction: TransactionModel,
        action: @escaping () -> ()?
    ) {
        self.transaction = transaction
        self.action = action
    }
    
    var body: some View {
        Button { action() } label: {
            HStack(spacing: DS.Spacing.px16) {
                VStack(alignment: .leading) {
                    Text(transaction.resourceType).font(.headline)
                    Text(transaction.amount).font(.subheadline)
                }
                Spacer()
                Text(transaction.createdAt).fontWeight(.light)
            }
        }
    }
}
