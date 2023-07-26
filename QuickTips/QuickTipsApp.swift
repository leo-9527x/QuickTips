//
//  QuickTipsApp.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//

import SwiftUI

@main
struct QuickTipsApp: App {
    @StateObject private var tipViewModel = TipViewModel()
    @StateObject private var historyViewModel = HistoryViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(tipViewModel)
                .environmentObject(historyViewModel)
                .preferredColorScheme(.dark)
        }
    }
}


