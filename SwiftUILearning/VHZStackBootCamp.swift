//
//  VHZStackBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 15/03/2023.
//

import SwiftUI

struct VHZStackBootCamp: View {
    var body: some View {
        VStack(alignment: .center, spacing: nil) {
            Rectangle()
                .fill(.pink)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(.purple)
                .frame(width: 100, height: 100)
        }
    }
}

struct VHZStackBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        VHZStackBootCamp()
    }
}
