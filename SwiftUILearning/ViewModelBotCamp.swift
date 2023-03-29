//
//  ViewModelBotCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 17/03/2023.
//

import SwiftUI

struct fruitsModel: Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let count : Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray : [fruitsModel] = []
    @Published var isLoading : Bool = false
    
    init() {
        dataAdded()
    }
    
    func dataAdded() {
        let data = [
            fruitsModel(name: "Apple", count: 23),
            fruitsModel(name: "Orange", count: 55),
            fruitsModel(name: "Banana", count: 33)
        ]
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [self] in
            self.fruitArray.append(contentsOf: data)
            isLoading = false
        }
    }
    
    func deleteRow(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBotCamp: View {
    
    @StateObject var fruitViewModel : FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text("\(fruit.name)")
                        }
                    }
                    .onDelete { index in
                        fruitViewModel.deleteRow(index: index)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Fruit List")
            .navigationBarItems(trailing: NavigationLink(destination: newScreen(fruitViewModel: fruitViewModel), label: {
                Image(systemName: "arrow.right")
            }))
        }
    }
}

struct newScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel : FruitViewModel
    
    var body: some View {
        Color.green
        
        VStack {
            ForEach(fruitViewModel.fruitArray) { index in
                Text("\(index.name)")
            }
        }
        
//        Button {
//            presentationMode.wrappedValue.dismiss()
//        } label: {
//            Text("Go Back")
//                .foregroundColor(.blue)
//                .font(.largeTitle)
//        }
//        Spacer()

    }
}

struct ViewModelBotCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBotCamp()
    }
}
