//
//  LandMark.swift
//  LandMark
//
//  Created by linvalM on 11/9/2022.
//

import Foundation
import SwiftUI
import CoreLocation

// Identifiable protocol allow us not to add the id when we generate the List
struct Landmark:Hashable,Codable,Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    // Codable conformance to load the data and get the category as defined in the JSON file
    enum Category: String,CaseIterable,Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + " _feature"): nil
    }
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates:Hashable,Codable {
        var latitude: Double
        var longitude: Double
    }
}
