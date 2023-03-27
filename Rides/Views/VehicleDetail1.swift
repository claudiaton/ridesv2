//
//  VehicleDetail1.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

import SwiftUI

struct VehicleDetail1: View {
    
    var vehicle: Vehicle
    
    var body: some View {
        VStack{
            Spacer()
            Text("Make and model: " + vehicle.makeAndModel)
            Text("Color: " + vehicle.color)
            Text("Car type: " + vehicle.carType)
            Spacer()
            .navigationTitle(vehicle.vin)
            .multilineTextAlignment(.center)
            .padding()
        }

    }
}

//struct VehicleDetail1_Previews: PreviewProvider {
//    static var previews: some View {
//        VehicleDetail1(vehicle: <#T##Vehicle#>(vin: "4PJVMAABPYPP93821", makeAndModel:"Buick Encore", color:"Red", carType: "Coupe", kilometrage:63775))
//    }
//}
