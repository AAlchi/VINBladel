//
//  MailView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 2/26/24.
//

import Foundation
import MessageUI
import SwiftUI

class MailComposeViewController: UIViewController, MFMailComposeViewControllerDelegate {
    @EnvironmentObject var iClass: InspectionDataClass
    static let shared = MailComposeViewController()

    func sendEmail(clientEmail: String) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([clientEmail])
//            var body = """
//            <html>
//            <body>
//                \(iClass.inspectionData.general.map { item in
//                    if item.choice != "OK" {
//                        return "<div class='\(item.choice == "SUG" ? "suggestion" : "issue")'><span class='title'>\(item.title):</span> \(item.choice)</div>"
//                    }
//                    return ""
//                }.joined())
//                \(iClass.inspectionData.brakes.map { item in
//                    if item.choice != "OK" {
//                        return "<div class='\(item.choice == "SUG" ? "suggestion" : "issue")'><span class='title'>\(item.title):</span> \(item.choice)</div>"
//                    }
//                    return ""
//                }.joined())
//                \(iClass.inspectionData.underCar.map { item in
//                    if item.choice != "OK" {
//                        return "<div class='\(item.choice == "SUG" ? "suggestion" : "issue")'><span class='title'>\(item.title):</span> \(item.choice)</div>"
//                    }
//                    return ""
//                }.joined())
//                \(iClass.inspectionData.multiPoint.map { item in
//                    if item.choice != "OK" {
//                        return "<div class='\(item.choice == "SUG" ? "suggestion" : "issue")'><span class='title'>\(item.title):</span> \(item.choice)</div>"
//                    }
//                    return ""
//                }.joined())
//                \(iClass.inspectionData.tire.map { item in
//                    if item.choice != "OK" {
//                        return "<div class='\(item.choice == "SUG" ? "suggestion" : "issue")'><span class='title'>\(item.title):</span> \(item.choice)</div>"
//                    }
//                    return ""
//                }.joined())
//            </body>
//            </html>
//            """
//            mail.setMessageBody(body, isHTML: true)
             UIApplication.shared.windows.last?.rootViewController?.present(mail, animated: true, completion: nil)
        } else {
            // Alert
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}

struct EmailView: View {
    @EnvironmentObject var firebaseClass: FirebaseClass
    var body: some View {
        Button(action: {
            MailComposeViewController.shared.sendEmail(clientEmail: firebaseClass.currentPerson.email)
        }, label: {
            Text("Send")
        })
    }
}


