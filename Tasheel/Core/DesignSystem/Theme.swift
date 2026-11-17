//
//  TransactionsLocalDataSource.swift
//  Tasheel
//
//  Created by MhMuD SalAh on 17/11/2026.
//

import SwiftUI

public enum DS {
    public enum Spacing {
        public static let px8: CGFloat = 16
        public static let px16: CGFloat = 16
    }

    public enum Radius {
        public static let s: CGFloat = 8
        public static let m: CGFloat = 14
        public static let l: CGFloat = 22
    }
}

public extension Double {
    func asCurrency(code: String = "USD") -> String {
        formatted(.currency(code: code))
    }
}
