//
//  ShapesBootcamp.swift
//  SwiftUILearning
//
//  Created by mehul on 13/03/2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        Circle()
//            .fill(.brown)
//            .stroke(.blue)
//            .stroke(.blue, lineWidth: 10)
            .stroke(.blue, style: .init(lineWidth: 10, lineCap: .butt, dash: [10]))
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
