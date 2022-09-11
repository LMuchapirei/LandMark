//
//  LandmarkList.swift
//  LandMark
//
//  Created by linvalM on 11/9/2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List (landmarks) {
            landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
