//
//  TipPercentageView.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//

import SwiftUI

struct TipPercentageView: View {
    @EnvironmentObject var viewModel: TipViewModel

    var body: some View {
        VStack {
            Text("Tip percentage: \(Int(viewModel.tipPercentage))%")
                .foregroundColor(.green)
            
            Slider(value: $viewModel.tipPercentage, in: 0...30, step: 1.0)
                .accentColor(.green)
        }
        .padding()
    }
}


