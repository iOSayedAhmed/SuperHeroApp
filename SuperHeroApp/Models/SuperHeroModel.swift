//
//  SuperHeroModel.swift
//  SuperHeroApp
//
//  Created by Develop on 30/05/2022.
//

import Foundation
import SwiftUI

struct SuperHeroModel: Identifiable {
    var id = UUID()
    var title : String
    var image : String
    var message : String
    var gradientColors : [Color]

  
    
}
let superHerosData :[SuperHeroModel] =  [
    SuperHeroModel(title: "Hulk",
              image: "hulk",
              message: "Hulk is very green",
              gradientColors:[Color("ColorHulk01"), Color("ColorHulk02")]),

    SuperHeroModel(title: "Ironman",
              image: "ironman",
              message: "Ironman can fly",
              gradientColors: [Color("ColorIronman01"),Color("ColorIronman02")]),

    SuperHeroModel(title: "Spiderman",
              image: "spiderman",
              message: "Spiderman is not a real spider",
              gradientColors: [Color("ColorSpiderman01"),Color("ColorSpiderman02")]),

    SuperHeroModel(title: "Superman",
              image: "superman",
              message: "Superman is from another planet",
              gradientColors: [Color("ColorSuperman01"),Color("ColoerSuperman02")]),

    SuperHeroModel(title: "Wolverine",
              image: "wolverine",
              message: "Wolverine has knives in his hand",
              gradientColors: [Color("ColorWolverine01"),Color("ColorWolverine02")])
    ]






