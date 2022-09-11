//
//  LandMark.swift
//  LandMark
//
//  Created by linvalM on 11/9/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmrk:Hashable,Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    struct Coordinates:Hashable,Codable {
        var latitude: Double
        var longitude: Double
    }
}
