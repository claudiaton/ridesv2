//
//  VehicleList.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

import SwiftUI

struct VehicleList: View {
    
//    var vehicles=Vehicle.dummy_data()
    var vehicles=APIService.load("2")
    
    
    var body: some View {
        NavigationView{
            List(vehicles){
                item in
                NavigationLink(destination: VehicleDetail1(vehicle: item),
                               label: {VehicleRow(vehicle: item)
                                })
            }
            .navigationBarTitle(Text("Rides"))
        }
    }
}

//struct VehicleList_Previews: PreviewProvider {
//    static var previews: some View {
//        VehicleList()
//    }
//}
