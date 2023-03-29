//
//  EnvironmentBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 17/03/2023.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray : [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "AppleWatch", "MacBook", "MacBook Pro"])
    }
}

struct EnvironmentBootCamp: View {
    
    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: detailsView(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Apple Product")
        }
        .environmentObject(viewModel)
    }
}

struct detailsView: View {
    var selectedItem : String
    
    var body: some View {
        ZStack {
            //background
            Color.green.ignoresSafeArea()
            
            //content
            NavigationLink(destination: finalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct finalView:View {
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View {
        ZStack {
            //background
            Color.purple.ignoresSafeArea()
            
            //forground
            ScrollView {
                VStack {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
            }
        }
    }
}

struct EnvironmentBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentBootCamp()
    }
}
