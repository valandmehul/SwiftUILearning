//
//  TextBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 16/03/2023.
//

import SwiftUI

struct TextBootCamp: View {
    
    @State var textFieldText: String = ""
    @State var texteditor: String = "Hello...."
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("type somthing here....", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                TextEditor(text: $texteditor)
                    .frame(maxWidth: .infinity)
//                    .background(Color.gray.cornerRadius(10))
                    .colorMultiply(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .font(.headline)
                Button("SAVE") {
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue.cornerRadius(10))
                .foregroundColor(.white)
                .font(.headline)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Textfield")
        }
        
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
