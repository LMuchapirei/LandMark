//
//  ProfileHost.swift
//  LandMark
//
//  Created by linvalM on 18/9/2022.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    
    var body: some View {
        Text("Profile for: \(draftProfile.username)")
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}