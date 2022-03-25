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
            
            UUIDView()
                .tabItem {
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    Text("UUID")
                }
        }
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
            .environmentObject(PasswordGeneratorViewModel())
    }
}
