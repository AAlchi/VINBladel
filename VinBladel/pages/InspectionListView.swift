//
//  InspectionListView.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 2/14/24.
//

import Foundation
import SwiftUI

struct InspectionList: View {
    let arrayTitle: String
    @State var inspectionChoices:[ChoiceStruct] = []
    @EnvironmentObject var inspectionDataClass: InspectionDataClass
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .frame(width: 250)
                Text("OK")
                    .foregroundStyle(.green)
                Text("SUG")
                    .foregroundStyle(.orange)
                Text("REQ")
                    .foregroundStyle(.red)
                Spacer()
                    .frame(width: 135)
                Text("Notes")
            }
            .font(.subheadline)
            .font(.caption)
            ForEach(inspectionDataClass.returnArray(array: arrayTitle), id: \.self) { item in
                InspectionItem(title: item.title, index: inspectionDataClass.returnArray(array: arrayTitle).firstIndex(of: item) ?? 0, arrayTitle: arrayTitle)
            }
            HStack {
                Button(action: {
                    if inspectionDataClass.curView - 1 > -1 {
                        inspectionDataClass.curView = inspectionDataClass.curView - 1
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .frame(width: 100, height: 35)
                            .foregroundStyle(.orange)
                        Text("Back")
                            .foregroundStyle(.white)
                            .bold()
                    }
                })
                Button(action: {
                    if inspectionDataClass.curView + 1 < 5 {
                        inspectionDataClass.curView = inspectionDataClass.curView + 1
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0)
                            .frame(width: 100, height: 35)
                            .foregroundStyle(.orange)
                        Text("Next")
                            .foregroundStyle(.white)
                            .bold()
                    }
                })
            }
        }
    }
}

#Preview {
    InspectionList(arrayTitle: "null")
} 
