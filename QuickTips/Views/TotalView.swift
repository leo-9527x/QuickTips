//
//  TotalView.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//

import SwiftUI

struct TotalView: View {
    @EnvironmentObject var viewModel: TipViewModel

    var body: some View {
        VStack {
            Text("Tip Amount: $\(String(format: "%.2f", viewModel.totalTip))")
                .foregroundColor(.green)

            Text("Total Bill: $\(String(format: "%.2f", viewModel.totalBill))")
                .foregroundColor(.green)

            if viewModel.numberOfPeople > 1 {
                Text("Each Person Pays: $\(String(format: "%.2f", viewModel.splitBill))")
                    .foregroundColor(.green)
            }
        }
        .padding()
    }
}

