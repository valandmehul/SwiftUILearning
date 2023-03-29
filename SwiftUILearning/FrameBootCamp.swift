//
//  FrameBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 13/03/2023.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
        
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
        
            .frame(width: 150)
            .background(.purple)
        
            .frame(maxWidth: .infinity)
            .background(.pink)
        
            .frame(maxHeight: .infinity)
            .background(.yellow)
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}
