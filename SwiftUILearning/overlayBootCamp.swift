//
//  overlayBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 14/03/2023.
//

import SwiftUI

struct overlayBootCamp: View {
    var body: some View {
        Text("Hello, World!")
//            .frame(width: 100, height: 100)
            .background(
                Circle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
            )
            .background(
                Circle()
//                    .background(.purple)
                    .fill(.purple)
                    .frame(width: 120, height: 120)
                    
            )
        //----------------------------------------
        
        Rectangle()
            .fill(.blue)
            .frame(width: 200, height: 200)
            .overlay(
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150)
                , alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(.purple)
                    .frame(width: 250, height: 250)
                , alignment: .bottomTrailing
            )
        //----------------------------------------
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .top,
                            endPoint: .bottomTrailing))
                    .frame(width: 100, height: 100)
                    .shadow(color: .blue, radius: 10)
                    .overlay(
                        Circle()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.red, Color.blue]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomLeading))
                            .frame(width: 30, height: 30)
                            .overlay(
                                Text("1")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                            )
                        , alignment: .bottomTrailing
                    )
            )
        
            
            
                
    }
}

struct overlayBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        overlayBootCamp()
    }
}
