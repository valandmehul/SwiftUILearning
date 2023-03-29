//
//  ListBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 16/03/2023.
//

import SwiftUI

struct ListBootCamp: View {
    
    @State var fruits : [String] = ["apple", "orange", "banana", "chiku"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete { indexset in
                        delete(index: indexset)
                    }
                    .onMove { indexset, index in
                        move(indexset: indexset, index: index)
                    }
                } header: {
                    HStack{
                        Text("fruits")
                        Image(systemName: "flame.fill")
                    }
                    .foregroundColor(.orange)
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading:
                    EditButton(),
                trailing:
                    button
            )
        }
    }
    
    var button: some View {
        Button(action: {
            add()
        }, label: {
            Text("Add")
        })
    }
    
    func add(){
        fruits.append("coconut")
    }
    
    func move(indexset: IndexSet, index: Int){
        fruits.move(fromOffsets: indexset, toOffset: index)
    }
    
    func delete(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}
