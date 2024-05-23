//
//  InspectionItemView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 2/14/24.
//

import Foundation
import SwiftUI

struct InspectionItem: View {
    let title: String
    let index: Int
    let arrayTitle: String
    @State var notesField: String = ""
    @State var choices = ["OK", "SUG", "REQ"]
    @EnvironmentObject var inspectionDataClass: InspectionDataClass
    var body: some View {
        HStack {
            HStack {
                Text(title)
                    .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 15))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title)
                ForEach(choices, id: \.self) { choice in
                    ZStack {
                        Button {
                            inspectionDataClass.updateArrays(array: arrayTitle, index: index, newState: choice)
                        } label: {
                            Rectangle()
                                .stroke(lineWidth: 2)
                                .frame(width: 25, height: 25)
                                .foregroundStyle(returnColor(choice: choice))
                        }
                        if inspectionDataClass.returnArray(array: arrayTitle)[index].choice == choice {
                            Text("X")
                                .foregroundStyle(.black)
                        }
                    }
                }
                TextField("Notes", text: $notesField)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                    .font(.system(size: 22))
            }
            .border(Color.black, width: 1)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        }
    }
    func returnColor(choice: String) -> Color {
        switch choice {
        case "OK":
            return Color.green
        case "SUG":
            return Color.orange
        case "REQ":
            return Color.red
        default:
            return Color.red
        }
    }
}


