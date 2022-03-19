//
//  PasswordAreaView.swift
//  Pa55word Generator
//
//  Created by Richard Clegg on 17/03/2022.
//

import SwiftUI

struct PasswordAreaView: View {
    
    var password: String = "Password Generator"
    @State var isFavourite: Bool = false
    
    var body: some View {
        ZStack {
            Color.primary
            Text(password)
                .textSelection(.enabled)
                .foregroundColor(Color("InvertColor"))
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
            
             HStack {
                 Spacer()
                 VStack {
                     Image(systemName: "gear")
                         .foregroundColor(Color("InvertColor"))
                         .font(.largeTitle)
                         .padding()
                     Spacer()
                     
                     Button {
                         isFavourite = true
                         DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                             isFavourite = false
                         }
                     } label: {
                         Image(systemName: "heart.fill")
                             .font(.largeTitle)
                             .foregroundColor(isFavourite ? Color.red : Color("InvertColor"))
                             .padding()
                     }
                 }
             }
        }
        .cornerRadius(20)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width * 1.0,
               height: UIScreen.main.bounds.height * 0.45)
    }
}

struct PasswordAreaView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordAreaView()
    }
}
