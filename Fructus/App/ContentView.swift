//
//  ContentView.swift
//  Fructus
//
//  Created by Sazza on 29/8/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }//: NAVIGATION
        
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
