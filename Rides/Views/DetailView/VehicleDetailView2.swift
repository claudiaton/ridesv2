//
//  VehicleDetail2.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-27.
//


import SwiftUI

struct VehicleDetailView2: View {
    
    var vehicle: Vehicle
    @StateObject private var viewModel = DetailViewModel()
    
    var body: some View {
        VStack{
            Spacer()
            Text("Kilometrage: " + String(vehicle.kilometrage))
            Text("Estimated carbon emission: " + String(viewModel.computeCarbon(kilometrage: vehicle.kilometrage)))
            Spacer()
            .navigationTitle(vehicle.vin)
            .multilineTextAlignment(.center)
            .padding()
        }

    }
}

//struct VehicleDetail2_Previews: PreviewProvider {
//    static var previews: some View {
//        VehicleDetail2()
//    }
//}
