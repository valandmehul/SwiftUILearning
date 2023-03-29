//
//  initialiserBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 15/03/2023.
//

import SwiftUI

struct initialiserBootCamp: View {
    
    let backgroundcolor: Color
    let title: String
    let count: Int
    
    init(fruits: fruits, count: Int) {
        
        self.count = count
        
        if fruits == .apple {
            self.title = "Apple"
            self.backgroundcolor = .red
        } else {
            self.title = "orange"
            self.backgroundcolor = .orange
        }
    }
    
    enum fruits {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .foregroundColor(.white)
                .font(.title)
            Text(title)
                .foregroundColor(.white)
                .font(.headline)
        }
        .frame(width: 100, height: 100)
        .background(backgroundcolor)
        .cornerRadius(15)
    }
}

struct initialiserBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            initialiserBootCamp(fruits: .apple, count: 5)
            initialiserBootCamp(fruits: .orange, count: 15)
        }
        
    }
}
