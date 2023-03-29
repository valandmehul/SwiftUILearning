//
//  onAppearBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 17/03/2023.
//

import SwiftUI

struct onAppearBootCamp: View {
    
    @State var textChanged : String = "Start...."
    @State var number : Int = 0
    var body: some View {
        NavigationView {
            ScrollView {
                Text(textChanged)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 150)
                            .onAppear {
                                number += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    textChanged = "Scrollview appear..."
                }
            }
            .navigationTitle("On Appear : \(number)")
        }
        
    }
}

struct onAppearBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        onAppearBootCamp()
    }
}
