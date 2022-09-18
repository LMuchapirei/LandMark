//
//  CategoryHome.swift
//  LandMark
//
//  Created by linvalM on 18/9/2022.
//

import SwiftUI

struct CategoryHome: View {
    // A property wrapper type for an observable object supplied by a parent or ancestor view.

    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView {
            // Use navigation view along with NavigationLink instances and related stiff to build navigation functionality
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height:200)
                    .clipped()
                    .listRowInsets(EdgeInsets()) // Ensures the image fit to the edges
                ForEach(modelData.categories.keys.sorted( ),id:\.self){ key in 
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets()) // Ensures the image fit into the space without an spacing between them and containers
            }
            // modifier to set the title of our navigation
                .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
