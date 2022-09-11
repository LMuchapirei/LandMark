//
//  CircleImage.swift
//  LandMark
//
//  Created by linvalM on 11/9/2022.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
