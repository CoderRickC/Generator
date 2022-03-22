//
//  UUIDView.swift
//  Generator
//
//  Created by Richard Clegg on 19/03/2022.
//

import SwiftUI

struct UUIDView: View {
    
    @EnvironmentObject var vm: PasswordGeneratorViewModel
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            PasswordAreaView(password: vm.uuidString)
            Button {
                vm.createUUID()
            } label: {
                Text("UUID - universally unique identifier".uppercased())
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(colorScheme == .light ? .white : .black))
                    .lineLimit(nil)
                    .frame(height: 60)
                    .frame(width: UIScreen.main.bounds.width * 0.95)
                    .background(Color.primary)
                    .cornerRadius(20)
                    .padding(.top, 50)
            }

        }
    }
}

struct UUIDView_Previews: PreviewProvider {
    static var previews: some View {
        UUIDView()
            .environmentObject(PasswordGeneratorViewModel())
    }
}
