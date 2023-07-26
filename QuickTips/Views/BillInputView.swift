//
//  BillInputView.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//
import SwiftUI

struct BillInputView: View {
    @EnvironmentObject var viewModel: TipViewModel

    var body: some View {
        TextField("Enter bill amount", text: $viewModel.billAmount)
            .keyboardType(.decimalPad)
            .border(Color.green, width: 2)
            .padding()
    }
}


