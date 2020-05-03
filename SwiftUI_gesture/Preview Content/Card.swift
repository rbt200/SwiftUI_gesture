//
//  Card.swift
//  SwiftUI_gesture
//
//  Created by Ivan Ivanov on 03.05.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct Card: View {
    
    let tapped: Bool
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        
        VStack {
            
            Image("child")
                .resizable()
                .scaleEffect(self.scale)
                .frame(width: 300, height: 300)
                .gesture(MagnificationGesture()
                    .onChanged { value in
                        self.scale = value.magnitude
                    }
            )
            Text("Card")
                .font(.largeTitle)
                .foregroundColor(Color.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(tapped ? Color.purple : Color.red)
        .cornerRadius(30)
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(tapped: false)
    }
}
