//
//  PlaySound.swift
//  SuperHeroApp
//
//  Created by Develop on 30/05/2022.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?
func playSound(sound :String, type:String){
    
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("Can't play Audio")
        }
    }
    
}
