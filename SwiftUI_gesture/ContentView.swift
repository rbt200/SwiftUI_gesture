//
//  ContentView.swift
//  SwiftUI_gesture
//
//  Created by Ivan Ivanov on 03.05.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isTapped: Bool = false
    @State private var cardDragState = CGSize.zero
    @State private var cardRotateState: Double = 0
    
    var body: some View {
        Card(tapped: self.isTapped)
            .animation(.spring())
            .offset(y: self.cardDragState.height)
            .rotationEffect(Angle(degrees: self.cardRotateState))
            
        .gesture(RotationGesture()
            .onChanged { value in
                self.cardRotateState = value.degrees
        }        )
            
            .gesture(DragGesture()
                .onChanged { value in
                    self.cardDragState = value.translation
                }
            .onEnded { value in
                self.cardDragState = CGSize.zero
                }
        )
            
            .gesture(TapGesture(count: 1)
                .onEnded({ () in
                    self.isTapped.toggle()
                }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
