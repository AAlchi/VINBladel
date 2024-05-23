
//  General_Inspection.swift
//  VinBladelNew
//
//  Created by James Balek on 1/23/24.
//

import Foundation
import SwiftUI
import FirebaseDatabase

struct General_Inspection: View {
    var body: some View {
        VStack() {
            Text("General Inspection")
                .font(.system(size: 30))
                .bold()
                .padding()
            Image("ColorsMeaning")
                .resizable()
                .frame(width: 900, height: 90)
                .padding()
            ScrollView {
                InspectionList(arrayTitle: "general")
            }
        }
    }
}

#Preview {
    General_Inspection()
}



