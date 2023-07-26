//
//  TipViewModel.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//

import Foundation

class TipViewModel: ObservableObject {
    @Published var billAmount: String = ""
    @Published var tipPercentage: Double = 15
    @Published var numberOfPeople: Int = 1
    @Published var calculations: [TipCalculator] = []

    var totalTip: Double {
        guard let billAmount = Double(billAmount) else { return 0.0 }
        return billAmount * tipPercentage / 100
    }

    var totalBill: Double {
        guard let billAmount = Double(billAmount) else { return 0.0 }
        return billAmount + totalTip
    }

    var splitBill: Double {
        guard let billAmount = Double(billAmount) else { return 0.0 }
        return totalBill / Double(numberOfPeople)
    }

    func calculate() {
        guard let billAmount = Double(billAmount) else { return }
        let calculation = TipCalculator(billAmount: billAmount, tipPercentage: tipPercentage, numberOfPeople: numberOfPeople)
        calculations.insert(calculation, at: 0)
    }
}

