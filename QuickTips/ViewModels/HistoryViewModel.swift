//
//  HistoryViewModel.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//

import Foundation

import Foundation

class HistoryViewModel: ObservableObject {
    @Published var calculations: [TipCalculator] = []

    // Store a calculation
    func storeCalculation(_ calculation: TipCalculator) {
        calculations.insert(calculation, at: 0)
    }

    // Delete a calculation
    func deleteCalculation(at offsets: IndexSet) {
        calculations.remove(atOffsets: offsets)
    }
    
    // Clear all calculations
    func clearCalculations() {
        calculations.removeAll()
    }
}

