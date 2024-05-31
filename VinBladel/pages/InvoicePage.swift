//
//  InvoicePage.swift
//  VinBladelNew
//
//  Created by Halas Wolff on 1/31/24.
//

import SwiftUI

struct InvoicePage: View {
    @EnvironmentObject var inspectionDataClass:InspectionDataClass
    var body: some View {
        VStack {
            ForEach(inspectionDataClass.inspectionData.general, id: \.self) { item in
                if item.choice != "OK" {
                    Text("\(item.title): \(item.choice)")
                        .foregroundStyle(item.choice == "SUG" ? .orange : .red)
                }
            }
            ForEach(inspectionDataClass.inspectionData.brakes, id: \.self) { item in
                if item.choice != "OK" {
                    Text("\(item.title): \(item.choice)")
                        .foregroundStyle(item.choice == "SUG" ? .orange : .red)
                }
            }
            ForEach(inspectionDataClass.inspectionData.underCar, id: \.self) { item in
                if item.choice != "OK" {
                    Text("\(item.title): \(item.choice)")
                        .foregroundStyle(item.choice == "SUG" ? .orange : .red)
                }
            }
            ForEach(inspectionDataClass.inspectionData.multiPoint, id: \.self) { item in
                if item.choice != "OK" {
                    Text("\(item.title): \(item.choice)")
                        .foregroundStyle(item.choice == "SUG" ? .orange : .red)
                }
            }
            ForEach(inspectionDataClass.inspectionData.tire, id: \.self) { item in
                if item.choice != "OK" {
                    Text("\(item.title): \(item.choice)")
                        .foregroundStyle(item.choice == "SUG" ? .orange : .red)
                }
            }
        }
    }
}



#Preview {
    InvoicePage()
}
