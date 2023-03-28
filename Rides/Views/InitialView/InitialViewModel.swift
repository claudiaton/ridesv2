//
//  InitialViewModel.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-28.
//

import SwiftUI

class InitialViewModel: ObservableObject {
    
    
    @Published var showNextView = false
    @Published var size: String = "0"
    @Published var showAlert = false
    @Published var intSize: Int = 0
    
    @Published var vehicles: [Vehicle] = []
    
    func fetch(){
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
    
    
    func sizeValidation (size: Int) -> Bool {
        if (size > 0 && size <= 100) {return true}
        else {return false}
    }
    
}
