//
//  RecordingButton.swift
//  birddad
//
//  Created by Clayton Sulby on 11/27/20.
//

import Foundation
import SwiftUI
import UIKit

struct RecordingButton: UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<RecordingButton>) -> RecordingViewController {
        let recordingButton = RecordingViewController()
        return recordingButton
    }

    func updateUIViewController(_ uiViewController: RecordingViewController, context: UIViewControllerRepresentableContext<RecordingButton>) {
    }
}
