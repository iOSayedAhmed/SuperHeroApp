//
//  ContentView.swift
//  SuperHeroApp
//
//  Created by Develop on 27/05/2022.
//

import SwiftUI

struct ContentView: View {
    var superHeros : [SuperHeroModel] = superHerosData
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(superHeros) { item in
                    HeroView(superHeros: item)
                }
                .padding()
                //.frame(width: 365, height: 545, alignment: .center)
                
            }//:HStack
            
            
        }//:ScrollView
    

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
