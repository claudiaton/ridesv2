//
//  ContentView.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

import Foundation
import SwiftUI

struct InitialView: View {
    @StateObject private var viewModel = InitialViewModel()
    
    
    var body: some View {
        NavigationView {
            ZStack {

                    
                    
                    VStack {
                        Text("Inform how many rides would you like to see: ")

                        TextField("Size", text: $viewModel.size)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250, height: 40, alignment: .center)
//                            .background(Color.gray.opacity(0.5).cornerRadius(20))
//                            .foregroundColor(.red)
                                
                            .font(.headline)
                        
                        NavigationLink(destination: VehicleListView(vehicles: viewModel.vehicles),
                                       isActive: $viewModel.showNextView) {
                        
                        Button(action: {
                            if(viewModel.sizeValidation(size: viewModel.intSize)){
                                viewModel.fetch()
                                viewModel.showNextView = true}
                            else {
                                viewModel.size=""
                                viewModel.showAlert = true}
                        }) {
                            Text("Submit")
                        }
                        .alert (isPresented:$viewModel.showAlert) {
                            Alert (
                                title: Text ("Input value is not valid"),
                                message: Text ("Please inform a value between 1 and 100."),
                                dismissButton: .default(Text("Got it!"))
                            )
                        }
                    }
                        .onChange(of: viewModel.size) {_ in
                        viewModel.intSize = Int(viewModel.size) ?? 0
                    }
                    
                }
            }
            .navigationBarTitle("Rides")
        }
    }
    
}

