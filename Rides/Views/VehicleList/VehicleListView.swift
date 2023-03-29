//
//  VehicleList.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

import SwiftUI

struct VehicleListView: View {
    var vehicles : [Vehicle]
//    var size : String
    
    @StateObject private var viewModel = VehicleListViewModel()
    
    var body: some View {
        
            NavigationView{
                
                VStack {
                    Toggle("Order by type", isOn: $viewModel.orderByType)
                    .toggleStyle(.button)
                    .tint(.blue)
                
                    List(viewModel.orderVehicles(vehicles: vehicles)){
                        item in
                        NavigationLink(destination: DetailView(vehicle: item),
                                       label: {VehicleRowView(vehicle: item)
                        })
                    }
                    .navigationBarTitle(Text("Rides list"))
                    .onAppear {
//                        viewModel.orderVehicles(vehicles: vehicles)
//                        viewModel.fetch(size: size)
                    }
                }
            }
    }
}

//struct VehicleList_Previews: PreviewProvider {
//    static var previews: some View {
//        VehicleList()
//    }
//}
