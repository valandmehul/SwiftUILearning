//
//  PeddingBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 15/03/2023.
//

import SwiftUI

struct PeddingBootCamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.bold)
//                .background(Color.yellow)
//                .padding([.bottom, .top], 20)
//                .background(Color.orange)
            
            Text("hello, world! this is sample v stack and it is multiple line demo.this is sample v stack and it is multiple line demo.this is sample v stack and it is multiple line demo.")
        }
        .padding()
        .background(
            Color.white
                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 0)
        )
    }
}

struct PeddingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PeddingBootCamp()
    }
}
