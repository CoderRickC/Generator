//
//  SliderView.swift
//  Pa55word Generator
//
//  Created by Richard Clegg on 17/03/2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var SliderValue: CGFloat
    
    var body: some View {
        VStack {
            Slider(value: $SliderValue, in: 4...50, step: 1)
                .tint(.purple)
            Text("Password Length: \(Int(SliderValue))")
        }
        .padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(SliderValue: Binding.constant(4))
            .previewLayout(.sizeThatFits)
    }
}
