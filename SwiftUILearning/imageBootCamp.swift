//
//  imageBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 13/03/2023.
//

import SwiftUI

struct imageBootCamp: View {
    var body: some View {
        Image("imageMe")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 200)
            .cornerRadius(15)
    }
}

struct imageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        imageBootCamp()
    }
}
