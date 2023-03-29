//
//  ForEachBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 15/03/2023.
//

import SwiftUI

struct ForEachBootCamp: View {
    let data: [String] = ["hi", "hello", "hello, eveeryone", "all good"]
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                HStack{
                    Circle()
                        .frame(width: 10, height: 10)
                    Text("number : \(index)")
                }
            }
        }
        //-----------------------------------------------------
        VStack{
            ForEach(data.indices) { index in
                Text("\(data[index])")
            }
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}
