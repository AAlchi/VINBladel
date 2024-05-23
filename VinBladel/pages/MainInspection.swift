//
//  MainInspection.swift
//  VinBladelNew
//
//  Created by James Balek on 2/22/24.
//

import Foundation
import FirebaseDatabase
import SwiftUI

struct MainInspection: View {
    @EnvironmentObject var firebaseClass: FirebaseClass
    @EnvironmentObject var inspectionDataClass: InspectionDataClass
    var body: some View {
        VStack {
            switch inspectionDataClass.curView {
            case 0:
                General_Inspection()
            case 1:
                Brakes_Inspection()
            case 2:
                UnderCar_Inspection()
            case 3:
                MultiPoint_Inspection()
            case 4:
                Tire_Inspection()
            default:
                Text("Error")
            }
        }
    }
}

#Preview(body: {
    MainInspection()
})
