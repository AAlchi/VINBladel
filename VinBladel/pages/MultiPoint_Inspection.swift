//
//  MultiPoint_Inspection.swift
//  VinBladelNew
//
//  Created by Ali AI on 2/22/24.
//

import Foundation
import FirebaseDatabase
import SwiftUI

struct MultiPoint_Inspection: View {
    var body: some View {
            VStack {
                Text("Multi-Point Inspection")
                    .font(.system(size: 30))
                    .bold()
                    .padding()
                Image("ColorsMeaning")
                    .resizable()
                    .frame(width: 900, height: 90)
                    .padding()
                ScrollView {
                    InspectionList(arrayTitle: "multiPoint")
                }
            }
    }
}
