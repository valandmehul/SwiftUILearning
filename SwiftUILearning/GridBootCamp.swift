//
//  GridBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 15/03/2023.
//

import SwiftUI

struct GridBootCamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.purple)
                .frame(height: 300)
                .overlay {
                    Text("MEHUL")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders]) {
                    ForEach(1..<10) { index in
                        Section {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(.orange)
                                    .frame(height: 100)
                            }
                        } header: {
                            Text("Section \(index)")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color.blue)
                        }
                    }
                }
            
        }
    }
}

struct GridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootCamp()
    }
}
