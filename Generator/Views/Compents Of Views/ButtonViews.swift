//
//  ButtonViews.swift
//  Pa55word Generator
//
//  Created by Richard Clegg on 17/03/2022.
//

import SwiftUI

struct ButtonViews: View {
    
    var title: String
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text(title)
            .font(.callout)
            .fontWeight(.semibold)
            .foregroundColor(Color(colorScheme == .light ? .white : .black))
            .lineLimit(nil)
            .frame(height: 60)
            .frame(width: UIScreen.main.bounds.width * 0.45)
            .background(Color.primary)
            .cornerRadius(20)
    }
}

struct ButtonViews_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViews(title: "ABC")
    }
}
