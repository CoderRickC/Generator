//
//  PasswordView.swift
//  Generator
//
//  Created by Richard Clegg on 17/03/2022.
//

import SwiftUI

struct PasswordView: View {
    
    @EnvironmentObject var vm: PasswordGeneratorViewModel
    
    @State var length: CGFloat = 4
    
    var body: some View {
        VStack {
            PasswordAreaView(password: vm.password)
                .padding(.top, 40)
            SliderView(SliderValue: $length)
            HStack {
                Button {
                    vm.createLettersPassword(of: Int(length))
                } label: {
                    ButtonViews(title: "Letters".uppercased())
                }
                Button {
                    vm.createLettersAndNumbers(of: Int(length))
                } label: {
                    ButtonViews(title: "Letters & \n Numbers".uppercased())
                }
            }
            HStack {
                Button {
                    vm.createLettersAndSpecials(of: Int(length))
                } label: {
                    ButtonViews(title: "Letters & \n Special".uppercased())
                }
                Button {
                    vm.createAll(of: Int(length))
                } label: {
                    ButtonViews(title: "Letters & Numbers & Specials".uppercased())
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        //.navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
            .environmentObject(PasswordGeneratorViewModel())
    }
}
