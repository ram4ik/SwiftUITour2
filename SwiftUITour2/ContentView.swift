//
//  ContentView.swift
//  SwiftUITour2
//
//  Created by ramil on 24/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var sliderAmount: CGFloat = 0.0
    var body: some View {
        VStack {
            Slider(value: $sliderAmount, in: 0...10)
            Text("SwiftUI Tour")
                .font(.largeTitle)
                .blur(radius: sliderAmount)
                .rotationEffect(.degrees(Double(sliderAmount) * 36))
                .scaleEffect(sliderAmount)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
