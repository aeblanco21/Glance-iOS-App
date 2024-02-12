//
//  ContentView.swift
//  Glance iOS App
//
//  Created by Andrés Blanco on 1/26/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showingSheet = false

    var body: some View {
        NavigationView {
            VStack {
                WebView(urlString: "https://passiveincomeconsultingllc.com/GS16.php") // Your web app URL
                    .navigationBarTitle("Web App", displayMode: .inline)
                    .navigationBarItems(trailing:
                    Button("Configure Wi-Fi") {
                        showingSheet = true
                    })
                .padding()
                .sheet(isPresented: $showingSheet) {
                    WifiConfigurationView()
                }
            }
        }
    }
}

struct WifiConfigurationView: View {
    var body: some View {
        VStack {
            Text("Connect the LED Panel to WiFi")
            // Add more detailed instructions here
            Button("Done", action: {
                // Logic to handle when user taps done
            })
        }
        .padding()
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
