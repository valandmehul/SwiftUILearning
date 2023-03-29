//
//  AnimationBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 16/03/2023.
//

import SwiftUI

struct AnimationBootCamp: View {
    
    @State var isShow : Bool = false
    
    var body: some View {
        VStack {
            
            Button("Press") {
                isShow.toggle()
            }
            Spacer()
            if isShow {
                Rectangle()
                    .fill(.blue)
                    .frame(width: .infinity, height: UIScreen.main.bounds.height / 2)
                    .cornerRadius(20)
                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
                    .animation(.spring())
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
