//
//  navigationBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 16/03/2023.
//

import SwiftUI

struct navigationBootCamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: nextScreen()) {
                    Text("hello, woorld!")
                }
                Text("hello, woorld!")
                Text("hello, woorld!")
            }
            .navigationTitle("All Inboxes")
            .navigationBarItems(
                leading:
                    Image(systemName: "person.fill"),
                trailing:
                    Image(systemName: "xmark")
            )
        }
        
    }
}

struct nextScreen: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(edges: .all)
                .navigationTitle("Second Screen")
            NavigationLink("third second") {
                Text("third second")
            }
        }
    }
}


struct navigationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        navigationBootCamp()
    }
}
