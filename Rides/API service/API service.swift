//
//  API service.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-24.
//

//import Foundation
//
//class APIService : NSObject {
//    private let sourceURL = URL (string: "https://random-data-api.com/api/vehicle/random_vehicle?size=" + "2")!
//
//
//    func getVehicleData(completion: @escaping ([Vehicle])->()) {
//        URLSession.shared.dataTask(with: sourceURL) {(data, urlREsponse, error) in
//            if let data = data {
//                let jsonDecoder = JSONDecoder()
//                let vehicleData = try! jsonDecoder.decode([Vehicle].self, from: data)
//                completion(vehicleData)
////                print(vehicleData)
//            }
//
//        }.resume()
//    }
//
//}

//import Foundation
//import SwiftUI
//
//public class APIService: ObservableObject {
//
//    @Published var vehicle: [Vehicle] = []
//    @Published var size: String
//
////    init(){
////    }
//
//    func load(_ size: String) {
//        let url = URL(string: "https://random-data-api.com/api/vehicle/random_vehicle?size=" + size)!
//
//        URLSession.shared.dataTask(with: url) {(data,response,error) in
//            do {
//                if let d = data {
//                    print(d)
//                    let decodedLists = try JSONDecoder().decode([Vehicle].self, from: d)
//                    DispatchQueue.main.async {
//                        self.vehicle = decodedLists
//                    }
//                }else {
//                    print("No Data")
//                }
//            } catch {
//                print ("Error")
//            }
//
//        }.resume()
//
//    }
//}
