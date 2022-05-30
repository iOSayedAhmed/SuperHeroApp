//
//  HeroView.swift
//  SuperHeroApp
//
//  Created by Develop on 27/05/2022.
//

import SwiftUI

struct HeroView: View {
    let superHeros : SuperHeroModel
    @State  var isPresented : Bool = false
    @State  var isSliding : Bool = false
    @State  var isScaling : Bool = false
    // make Viberation Impact
    var hapticimpact = UIImpactFeedbackGenerator(style: .heavy)
    var body: some View {
        ZStack {
            Image(superHeros.image)
                .resizable()
                .scaledToFill()
                .scaleEffect(isScaling ? 1 : 0.7)
                .animation(.easeInOut(duration: 0.8), value: isScaling)
            VStack {
                Text(superHeros.title)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.heavy)
                Button {
                    print("Start")
                    playSound(sound: "chimeup", type:"mp3")
                    isPresented.toggle()
                    hapticimpact.impactOccurred()
                } label: {
                    HStack{
                        Text("Start")
                            .fontWeight(.medium)
                            .font(.title2)
                        Image(systemName: "arrow.right.circle")
                    }//:HStack
                    .padding()
                    .background(LinearGradient(colors: superHeros.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
                    .shadow(radius: 10)
                    .clipShape(Capsule())
                    .alert(isPresented: $isPresented) {
                        Alert(title: Text("More About \(superHeros.title)"), message: Text(superHeros.message), dismissButton: .default(Text("OK")))
                    }
                    
                    
                }//:label
                

            }//:VStack
            .offset(y: isSliding ? 150 : 300)
            .animation(.easeOut(duration: 0.8), value: isSliding)
            .onAppear {
                isScaling = true
                isSliding = true
            }

                
            
        }//ZStack
        .frame(width: 335, height: 545, alignment: .center)
        .background(LinearGradient(colors: superHeros.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(16)
        .shadow(color: .black, radius: 2, x: 2, y: 2)
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(superHeros:superHerosData[1])
    }
}
