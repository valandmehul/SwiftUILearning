//
//  SheetsBootCamp.swift
//  SwiftUILearning
//
//  Created by mehul on 16/03/2023.
//

import SwiftUI

struct SheetsBootCamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button {
                presentaionMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.red)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
        }
    }
    
}

struct SheetsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootCamp()
    }
}
