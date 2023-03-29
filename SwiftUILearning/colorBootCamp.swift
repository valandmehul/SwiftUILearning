//
//  colorBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 13/03/2023.
//

import SwiftUI

struct colorBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color("CustomColor"))
//            .fill(.orange)
            .frame(width: 200, height: 100)
            .shadow(color: Color.orange, radius: 7, x: 0, y: 10)
//            .fill(Color("CustomColor"))
//        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.orange)
//            .frame(width: 200, height: 100)
    }
}

struct colorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        colorBootCamp()
            
    }
}
