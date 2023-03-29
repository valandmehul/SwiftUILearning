//
//  conditionalBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 16/03/2023.
//

import SwiftUI

struct conditionalBootCamp: View {
    
    @State var showCircle : Bool = false
    @State var showRectengle : Bool = false
    
    var body: some View {
        VStack {
            Button("show circle") {
                showCircle.toggle()
            }
            Button("show rectengle") {
                showRectengle.toggle()
            }
            if showCircle {
                Circle()
                    .frame(width: 50, height: 50)
            } else if showRectengle {
                Rectangle()
                    .frame(width: 50, height: 50)
            }
            Spacer()
        }
    }
}

struct conditionalBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        conditionalBootCamp()
    }
}
