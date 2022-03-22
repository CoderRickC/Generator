//
//  FavouritePassword.swift
//  Pa55word Generator
//
//  Created by Richard Clegg on 17/03/2022.
//

import SwiftUI

struct FavouritePassword: View {
    
    @EnvironmentObject var vm : PasswordGeneratorViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(vm.favouritePasswords, id: \.self) { index in
                    Text(index)
                        .font(.title)
                }
            }
            .navigationTitle("Saved Password")
        }
    }
}

struct FavouritePassword_Previews: PreviewProvider {
    static var previews: some View {
        FavouritePassword()
            .environmentObject(PasswordGeneratorViewModel())
    }
}
