//
//  DetailView.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-28.
//

import SwiftUI

struct DetailView: View {
    
    var vehicle: Vehicle
    
    var body: some View {
        TabView{
            VehicleDetail1(vehicle: vehicle)
            VehicleDetail2(vehicle: vehicle)
        }
        
        
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}