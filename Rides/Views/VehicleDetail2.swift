//
//  VehicleDetail2.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-27.
//


import SwiftUI

struct VehicleDetail2: View {
    
    var vehicle: Vehicle
    func computeCarbon(kilometrage: Int)->Int{
        var result: Int
        result = kilometrage
        if(kilometrage > 5000){
            result += (kilometrage - 5000)/2
        }
        
        return result
    }
    
    var body: some View {
        VStack{
            Spacer()
            Text("Kilometrage: " + String(vehicle.kilometrage))
            Text("Estimated carbon emission: " + String(computeCarbon(kilometrage: vehicle.kilometrage)))
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
