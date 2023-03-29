//
//  BindingBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 16/03/2023.
//

import SwiftUI

struct BindingBootCamp: View {
    
    @State var backgroundcolor: Color = Color.red
    
    var body: some View {
        ZStack {
            //background
            backgroundcolor.ignoresSafeArea(.all)
            
            //content
            ButtonView(backgroundcolor: $backgroundcolor)
        }
    }
}

struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundcolor : Color
    @State var buttoncolor : Color = Color.blue
    
    var body: some View {
        Button {
            backgroundcolor = Color.orange
            buttoncolor = Color.green
        } label: {
            Text("CHANGE COLOR")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(buttoncolor)
                .cornerRadius(30)
        }
    }
}
