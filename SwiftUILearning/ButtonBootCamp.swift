//
//  ButtonBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 15/03/2023.
//

import SwiftUI

struct ButtonBootCamp: View {
    
    @State var title : String = "this is my title"
    
    var body: some View {
        VStack(spacing: 20){
            Text(title)
            Button("Press Me") {
                self.title = "button press"
            }
            .accentColor(.red)
            
            Button {
                self.title = "second button press"
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(color: .red, radius: 10)
                    )
            }
            
            Button {
                self.title = "third button"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                            
                    }
            }

            Button {
                
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 5)
                    )
                    
            }

        }
    }
}

struct ButtonBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootCamp()
    }
}
