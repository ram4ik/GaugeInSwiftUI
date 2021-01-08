//
//  ContentView.swift
//  GaugeInSwiftUI WatchKit Extension
//
//  Created by Ramill Ibragimov on 08.01.2021.
//

import SwiftUI

struct ContentView: View {
    var gradient = Gradient(colors: [.blue, .pink, .purple, .orange])
    
    var body: some View {
        Gauge(
            value: 33,
            in: 0.0 ... 100.0,
            label: {
                Text("Speed")
            },
            currentValueLabel: {
                Text("42")
                    .foregroundColor(.green)
            },
            minimumValueLabel: {
                Text("0")
                    .foregroundColor(.green)
            },
            maximumValueLabel: {
                Text("100")
                    .foregroundColor(.green)
            }
        ).gaugeStyle(CircularGaugeStyle(tint: gradient))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
