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
            
        }
        Spacer()
        Text("")
            .navigationTitle(vehicle.vin)
            .navigationBarTitleDisplayMode(.inline)
    }
}

//struct VehicleDetail1_Previews: PreviewProvider {
//    static var previews: some View {
//        VehicleDetail1(vehicle: <#T##Vehicle#>(vin: "4PJVMAABPYPP93821", makeAndModel:"Buick Encore", color:"Red", carType: "Coupe", kilometrage:63775))
//    }
//}
