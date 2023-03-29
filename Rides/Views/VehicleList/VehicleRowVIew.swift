//
//  VehicleRow.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

import SwiftUI

struct VehicleRowView: View {
    
    var vehicle: Vehicle
    
    var body: some View {
//        HStack {
//            Image()               // For User experience it would be nice to have more images
//                .resizable()
//                .padding()
//                .frame(width:80, height:80)
        VStack{
            Text(vehicle.vin)
                .font(.title)
            Text(vehicle.makeAndModel)
                .fontWeight(.bold)
            Text(vehicle.carType)
                .fontWeight(.thin)
        }
//        }
    }
}

//struct VehicleRow_Previews: PreviewProvider {
//    static var previews: some View {
//        VehicleRow(vehicle: <#T##Vehicle#>(vin: "4PJVMAABPYPP93821", makeAndModel:"Buick Encore", color:"Red", carType: "Coupe", kilometrage:63775))
//    }
//}
