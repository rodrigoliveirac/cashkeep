//
//  ContentView.swift
//  iosApp
//
//  Created by Rodrigo Cavalcante on 20/02/24.
//

import SwiftUI
import shared

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(Greeting().greet())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
