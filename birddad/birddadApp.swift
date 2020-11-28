//
//  birddadApp.swift
//  birddad
//
//  Created by Clayton Sulby on 11/25/20.
//

import SwiftUI

@main
struct birddadApp: App {
    
    let audioModel = AudioModel.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioModel)
        }
    }
}
