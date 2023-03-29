//
//  ScrollViewBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 15/03/2023.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .frame(width: 100, height: 80)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                    
                }
            }
        }
    }
}

struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
