//
//  TabbedView.swift
//  Generator
//
//  Created by Richard Clegg on 19/03/2022.
//

import SwiftUI

struct TabbedView: View {
    var body: some View {
        TabView {
            PasswordView()
                .tabItem {
                    Image(systemName: "key")
                    Text("Passwords")
                }
                .badge(0)
            
            UUIDView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("UUID")
                }
                .badge(0)
            
            Color.yellow
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Random")
                }
                .badge(0)
        }
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
            .environmentObject(PasswordGeneratorViewModel())
    }
}
