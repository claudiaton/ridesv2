//
//  DetailViewModel.swift
//  Rides
//
//  Created by Claudia Ton on 2023-03-28.
//
import SwiftUI

class DetailViewModel: ObservableObject {
    
//    @Published 
    
    func computeCarbon(kilometrage: Int)->Int{
        var result: Int
        result = kilometrage
        if(kilometrage > 5000){
            result += (kilometrage - 5000)/2
        }
        
        return result
    }

}
