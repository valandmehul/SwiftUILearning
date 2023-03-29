//
//  TabviewBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 17/03/2023.
//

import SwiftUI

struct TabviewBootCamp: View {
    
    @State var selectionTab : Int = 0
    let icons = ["heart.fill", "house.fill", "globe", "person.fill"]
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .background(.red)
        .frame(height: 400)
        .tabViewStyle(.page)
        
//        TabView(selection: $selectionTab) {
//            homeview(selection: $selectionTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("Profile")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

struct TabviewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabviewBootCamp()
    }
}

struct homeview: View {
    @Binding var selection : Int
    var body: some View {
        VStack {
            Text("Home")
            Button("Go To Profile") {
                selection = 2
            }
            .padding()
        }
    }
}
