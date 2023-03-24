//
//  ContentView.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

import Foundation
import SwiftUI

struct ContentView: View {
    @State var showNextView = false
    @State private var size: String = "1"
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: VehicleList(),
                               isActive: $showNextView) {
                    Text("")
                    
                    VStack {
                        Button(action: {
                            self.makeApiCall()
                        }) {
                            Text("Submit")
                        }
                    }
                    
                }
            }
            .navigationBarTitle("Content View")
        }
    }
    func makeApiCall() {
        var apiService : APIService!
        if apiService != nil {
            showNextView = true
        }
    }
    
}

