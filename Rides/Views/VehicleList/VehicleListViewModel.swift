//
//  VehicleListViewModel.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-27.
//

import SwiftUI

class VehicleListViewModel: ObservableObject {
    
    @Published var orderByType: Bool = false
    @Published var ListToDisplay = []
    
    func orderVehicles(vehicles: [Vehicle]) -> [Vehicle] {
        var ListToDisplay = vehicles
        if(orderByType) {
            ListToDisplay = vehicles.sorted(by: {(veh0, veh1)-> Bool in return veh0.carType < veh1.carType})
        }
        if(!orderByType) {
            ListToDisplay = vehicles.sorted(by: {(veh0, veh1)-> Bool in return veh0.vin < veh1.vin})
        }
        return ListToDisplay
    }
}

