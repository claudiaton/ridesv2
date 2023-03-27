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
    @State var size: String = "0"
    @State private var showingAlert = false
    @State var intSize: Int = 0
    
    
    
    var body: some View {
        NavigationView {
            ZStack {

                    
                    
                    VStack {
                        Text("Inform how many rides would you like to see: ")

                        TextField("", text: $size)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250, height: 40, alignment: .center)
//                            .background(Color.gray.opacity(0.5).cornerRadius(20))
//                            .foregroundColor(.red)
                                
                            .font(.headline)
                        
                        NavigationLink(destination: VehicleList(size: size),
                                       isActive: $showNextView) {
                        
                        Button(action: {
                            if (intSize > 0 && intSize <= 100) {showNextView = true}
                            else {showingAlert = true}
                        }) {
                            Text("Submit")
                        }
                        .alert (isPresented:$showingAlert) {
                            Alert (
                                title: Text ("Input value is not valid"),
                                message: Text ("Please inform a value between 1 and 100."),
                                dismissButton: .default(Text("Got it!"))
                            )
                        }
                    }
                    .onChange(of: size) {_ in
                        intSize = Int(size) ?? 0
                    }
                    
                }
            }
            .navigationBarTitle("Rides")
        }
    }
    
}

