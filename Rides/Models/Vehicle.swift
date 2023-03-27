//
//  Vehicle.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

import Foundation
import SwiftUI


struct Vehicle: Codable, Hashable, Identifiable {
    var id = UUID()
    var vin: String
    var makeAndModel: String
    var color: String
    var carType: String
    let kilometrage: Int

    enum CodingKeys: String, CodingKey {
        case vin
        case color
        case kilometrage
        case makeAndModel = "make_and_model"
        case carType = "car_type"
    }
}



extension Vehicle {
    static func dummy_data()->[Vehicle]{
        return[
            Vehicle(vin: "4PJVMAABPYPP93821", makeAndModel:"Buick Encore", color:"Red", carType: "Coupe", kilometrage:63775),
            Vehicle(vin: "0RTPLSTS6LPP63704", makeAndModel:"Honda Accord", color:"Beige", carType: "SUV", kilometrage:86364),
        ].shuffled()
    }
}

//class APIService: ObservableObject {
//
//    @Published var vehicle: [Vehicle] = []
////    @Published var size: String = "1"
//
//
//    func load(_ size: String) {
//        guard let url = URL(string: "https://random-data-api.com/api/vehicle/random_vehicle?size=" + size) else {return}
//
//        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
//            guard let data = data, error == nil else {return}
//            
//            do {
//                let decodedLists = try JSONDecoder().decode([Vehicle].self, from: data)
//                    DispatchQueue.main.async {
//                        self?.vehicle = decodedLists
//                    }
//                } catch {
//                print ("Error")
//            }
//
//        }
//        task.resume()
//
//    }
//}
