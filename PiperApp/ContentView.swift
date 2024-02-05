//
//  ContentView.swift
//  piperapp
//
//  Created by Ihor Shevchuk on 22.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button {
                PiperDemo.shared.doJob()
            } label: {
                Text("Do job")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
