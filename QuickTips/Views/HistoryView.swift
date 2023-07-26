//
//  HistoryView.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//

import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var historyViewModel: HistoryViewModel

    var body: some View {
        NavigationView {
            List(historyViewModel.calculations, id: \.self) { calculation in
                VStack(alignment: .leading) {
                    Text("Bill Amount: $\(String(format: "%.2f", calculation.billAmount))")
                    Text("Tip Percentage: \(Int(calculation.tipPercentage))%")
                    Text("Total Bill: $\(String(format: "%.2f", calculation.calculateTotalBill()))")
                    if calculation.numberOfPeople > 1 {
                        Text("Split Between: \(calculation.numberOfPeople) people")
                        Text("Each Person Pays: $\(String(format: "%.2f", calculation.splitBill()))")
                    }
                }
            }
            .navigationBarTitle("History")
        }
    }
}

//struct HistoryView: View {
//    @Binding var calculations: [TipCalculator]
//
//    var body: some View {
//        NavigationView {
//            List(calculations, id: \.self) { calculation in
//                VStack(alignment: .leading) {
//                    Text("Bill Amount: $\(String(format: "%.2f", calculation.billAmount))")
//                    Text("Tip Percentage: \(Int(calculation.tipPercentage))%")
//                    Text("Total Bill: $\(String(format: "%.2f", calculation.calculateTotalBill()))")
//                    if calculation.numberOfPeople > 1 {
//                        Text("Split Between: \(calculation.numberOfPeople) people")
//                        Text("Each Person Pays: $\(String(format: "%.2f", calculation.splitBill()))")
//                    }
//                }
//            }
//            .navigationBarTitle("History")
//        }
//    }
//}

