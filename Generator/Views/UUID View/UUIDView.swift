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
            Spacer()
            PasswordAreaView(password: vm.uuidString)
                .offset(y: -50)
            Spacer()
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
            }
            Spacer()
        }
    }
}

struct UUIDView_Previews: PreviewProvider {
    static var previews: some View {
        UUIDView()
            .environmentObject(PasswordGeneratorViewModel())
    }
}
