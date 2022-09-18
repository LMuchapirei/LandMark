//
//  ProfileEditor.swift
//  LandMark
//
//  Created by linvalM on 18/9/2022.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username",text: $profile.username)
            }
            Toggle(isOn: $profile.prefersNotifications){
                Text("Enable Notifications").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
