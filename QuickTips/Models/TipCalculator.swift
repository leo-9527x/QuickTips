//
//  TipCalculator.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//

import Foundation

struct TipCalculator: Identifiable, Codable, Hashable {
    let id: UUID
    var billAmount: Double
    var tipPercentage: Double
    var numberOfPeople: Int

    init(billAmount: Double, tipPercentage: Double, numberOfPeople: Int) {
        self.id = UUID()
        self.billAmount = billAmount
        self.tipPercentage = tipPercentage
        self.numberOfPeople = numberOfPeople
    }

    func calculateTip() -> Double {
        return billAmount * tipPercentage / 100
    }

    func calculateTotalBill() -> Double {
        return billAmount + calculateTip()
    }

    func splitBill() -> Double {
        return calculateTotalBill() / Double(numberOfPeople)
    }
}



