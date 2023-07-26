//
//  SplitBillView.swift
//  QuickTips
//
//  Created by Robert Liu on 7/26/23.
//

import SwiftUI

struct SplitBillView: View {
    @EnvironmentObject var viewModel: TipViewModel

    var body: some View {
        Stepper(value: $viewModel.numberOfPeople, in: 1...20) {
            Text("\(viewModel.numberOfPeople) people")
                .foregroundColor(.green)
        }
        .padding()
    }
}


