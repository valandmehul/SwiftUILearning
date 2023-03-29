//
//  ContentView.swift
//  SwiftUILearning
//
//  Created by mehul on 12/03/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        Text("hello Mehul! how are you")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.red)
           // .strikethrough(true, color: .black)
    }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
