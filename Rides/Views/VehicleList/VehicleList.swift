//
//  VehicleList.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

import SwiftUI

struct VehicleList: View {
    
    var size : String
    @State var orderByType: Bool = false
    @StateObject var viewModel = ViewModel()
    @State var ListToDisplay = []
    
    var body: some View {
        
            NavigationView{
                
                VStack {
                    Toggle("Order by type", isOn: $orderByType)
                    .toggleStyle(.button)
                    .tint(.blue)
                
                    List(viewModel.orderVehicles(orderByType: orderByType)){
                        item in
                        NavigationLink(destination: DetailView(vehicle: item),
                                       label: {VehicleRow(vehicle: item)
                        })
                    }
                    .navigationBarTitle(Text("Rides list"))
                    .onAppear {
                        viewModel.fetch(size: size)
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
