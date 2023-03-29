//
//  ExtractBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 15/03/2023.
//

import SwiftUI

struct ExtractBootCamp: View {
    
    @State var backgroundcolor : Color = Color.green
    
    var body: some View {
        ZStack {
            //background
            backgroundcolor.ignoresSafeArea(.all)
            
            //contant
            contantLayer
        }
    }
    
    var contantLayer: some View {
        VStack {
            Text("Title")
            
            Button {
                buttonPressed()
            } label: {
                Text("Press Me")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }

        }
    }
    
    func buttonPressed() {
        self.backgroundcolor = .yellow
    }
}

struct ExtractBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractBootCamp()
    }
}
