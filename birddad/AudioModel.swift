//
//  AudioModel.swift
//  birddad
//
//  Created by Clayton Sulby on 11/25/20.
//

import Foundation
import AVFoundation

class AudioModel : NSObject, ObservableObject, AVAudioPlayerDelegate {
    static let shared = AudioModel()
    @Published var audioPlayer:AVAudioPlayer?
    @Published var isPlaying:Bool
    
    override init() {
        isPlaying = false
        
        let aSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "test", ofType: "wav")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf:aSound as URL)
        } catch {
            print("Cannot play the file")
        }
        
        super.init()
        
        audioPlayer!.delegate = self
    }
    
    func play() {
        self.isPlaying = true
        audioPlayer!.play()
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        self.isPlaying = false
    }
}
