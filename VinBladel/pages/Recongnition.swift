//
//  Recongnition.swift
//  VinBladel
//
//  Created by James Balek on 5/23/24.
//

import Foundation

//func recognizeTextHandler(request: VNRequest, error: Error?) {
//    guard let observations =
//            request.results as? [VNRecognizedTextObservation] else {
//        return
//    }
//    let recognizedStrings = observations.compactMap { observation in
//        // Return the string of the top VNRecognizedText instance.
//        return observation.topCandidates(1).first?.string
//    }
//    
//   
//    processResults(recognizedStrings)
//    let boundingRects: [CGRect] = observations.compactMap { observation in
//
//
//
//        guard let candidate = observation.topCandidates(1).first else { return .zero }
//        
//
//        let stringRange = candidate.string.startIndex..<candidate.string.endIndex
//        let boxObservation = try? candidate.boundingBox(for: stringRange)
//        
//
//        let boundingBox = boxObservation?.boundingBox ?? .zero
//        
//
//        return VNImageRectForNormalizedRect(boundingBox,
//                                            Int(image.size.width),
//                                            Int(image.size.height))
//        
//
//        guard let cgImage = UIImage(named: "snapshot")?.cgImage else { return }
//
//
//
//        let requestHandler = VNImageRequestHandler(cgImage: cgImage)
//
//
//
//        let request = VNRecognizeTextRequest(completionHandler: recognizeTextHandler)
//
//
//        do {
//
//            try requestHandler.perform([request])
//        } catch {
//            print("Unable to perform the requests: \(error).")
//        }
//    }
//}
//
