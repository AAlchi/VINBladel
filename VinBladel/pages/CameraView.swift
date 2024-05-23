//
//  CameraView.swift
//  VinBladel
//
//  Created by James Balek on 5/23/24.
//

import SwiftUI

struct CameraView: View {
    var image: CGImage?
    private let label = Text("camera")
    
    var body: some View {
        if let image = image {
            Image(image, scale: 1.0, orientation: .up, label: label)
        } else {
            Color.black
        }
    }
}
