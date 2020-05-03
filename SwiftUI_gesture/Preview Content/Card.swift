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
    
    var body: some View {
        
        VStack {
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
