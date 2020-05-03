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
    
    var body: some View {
        Card(tapped: self.isTapped)
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
