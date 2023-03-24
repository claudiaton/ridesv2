//
//  DynamicList.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

import SwiftUI

struct DynamicList: View {
    
    let vehicles = Vehicle.dummy_data()
    
    var body: some View {
        NavigationView {
            List(vehicles){vehicle in Text(vehicle.vin)}
            
                .listStyle(.inset)
                .navigationTitle("Rides")
        }
    }
}

//struct DynamicList_Previews: PreviewProvider {
//    static var previews: some View {
//        DynamicList()
//    }
//}
