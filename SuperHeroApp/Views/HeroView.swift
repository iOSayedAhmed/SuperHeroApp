//
//  HeroView.swift
//  SuperHeroApp
//
//  Created by Develop on 27/05/2022.
//

import SwiftUI

struct HeroView: View {
    let superHeros : SuperHeroModel
    @State    var isPresented : Bool = false
    var body: some View {
        ZStack {
            Image(superHeros.image)
                .resizable()
                .scaledToFit()
                .padding()
            VStack {
                Text(superHeros.title)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.heavy)
                Button {
                    print("Start")
                    isPresented.toggle()
                } label: {
                    HStack{
                        Text("Start")
                            .fontWeight(.medium)
                            .font(.title2)
                        Image(systemName: "arrow.right.circle")
                    }//HStack
                    .padding()
                    .background(LinearGradient(colors: superHeros.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
                    .shadow(radius: 10)
                    .clipShape(Capsule())
                    .alert(isPresented: $isPresented) {
                        Alert(title: Text("More About \(superHeros.title)"), message: Text(superHeros.message), dismissButton: .default(Text("OK")))
                    }
                    
                }

            }//VStack
            .offset(x: 0, y: 150)

                
            
        }//ZStack
        .background(LinearGradient(colors: superHeros.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
        .frame(width: 365, height: 545, alignment: .center)
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(superHeros:superHerosData[1])
    }
}
