//
//  VehicleListViewModel.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-27.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var vehicles: [Vehicle] = []
    
    func fetch(size: String){
        guard let url = URL(string:"https://random-data-api.com/api/vehicle/random_vehicle?size=" + size) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data,
                  error == nil
            else {
                return
            }
            //convert to JSON
            do {
                let vehicles = try JSONDecoder().decode([Vehicle].self, from: data)
                DispatchQueue.main.async {
                    self?.vehicles = vehicles
                }
            }
            catch {
                print (error)
            }
        }
        task.resume()
    }
    
    
    func orderVehicles(orderByType: Bool) -> [Vehicle] {
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

