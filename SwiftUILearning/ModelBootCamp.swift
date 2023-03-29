//
//  ModelBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 17/03/2023.
//

import SwiftUI

struct UserModel: Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let displayname : String
    let count : Int
}

struct ModelBootCamp: View {
    
    @State var users : [UserModel] = [
        UserModel(name: "Mehul", displayname: "mehul123", count: 1000),
        UserModel(name: "Ashok", displayname: "ashok432", count: 355),
        UserModel(name: "Jainish", displayname: "jainish777", count: 233)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack (spacing: 15){
                        Circle()
                            .frame(width: 30, height: 30)
                        VStack (alignment: .leading) {
                            Text("\(user.name)")
                            Text("@\(user.displayname)")
                                .foregroundColor(Color.gray)
                            
                            
                        }
                        Spacer()
                        if user.count > 500 {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(Color.blue)
                        }
                        VStack {
                            Text("Followers \(user.count)")
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users List")
        }
    }
}

struct ModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootCamp()
    }
}
