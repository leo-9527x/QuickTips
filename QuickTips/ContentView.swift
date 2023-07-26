//
//  ContentView.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: TipViewModel
    @EnvironmentObject var historyViewModel: HistoryViewModel
    
    @State private var showTotalView = false
    @State private var showHistoryView = false

    var body: some View {
        NavigationView {
            VStack {
                BillInputView()
                TipPercentageView()
                SplitBillView()
                
                Button(action: {
                    viewModel.calculate()
                    if let billAmount = Double(viewModel.billAmount) {
                        let newCalculation = TipCalculator(billAmount: billAmount, tipPercentage: viewModel.tipPercentage, numberOfPeople: viewModel.numberOfPeople)
                        historyViewModel.storeCalculation(newCalculation)
                    }
                    showTotalView = true
                }) {
                    Text("Calculate")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding()
                
                Button(action: {
                    showHistoryView = true
                }) {
                    Text("Show History")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding()
            }
            .sheet(isPresented: $showTotalView) {
                TotalView()
                    .environmentObject(viewModel)
            }
            .sheet(isPresented: $showHistoryView) {
                HistoryView()
                    .environmentObject(historyViewModel)
            }
            .navigationBarTitle("QuickTips")
        }
    }
}

