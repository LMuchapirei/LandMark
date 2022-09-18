//
//  LandMarkApp.swift
//  LandMark
//
//  Created by linvalM on 11/9/2022.
//

import SwiftUI

@main
struct LandMarkApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
//            CircleImage()
        }
    }
}
