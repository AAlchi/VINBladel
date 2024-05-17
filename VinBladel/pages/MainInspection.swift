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
    var body: some View {
        VStack {
            NavigationLink {
                General_Inspection()
            } label: {
                Text("General Inspection")
                    .font(.system(size: 30))
            }
            NavigationLink {
                Brakes_Inspection()
            } label: {
                Text("Brakes Inspection")
                    .font(.system(size: 30))
            }
            NavigationLink {
                UnderCar_Inspection()
            } label: {
                Text("Under Car Inspection")
                    .font(.system(size: 30))
            }
            NavigationLink {
                MultiPoint_Inspection()
            } label: {
                Text("Multi Point Inspection")
                    .font(.system(size: 30))
            }
            NavigationLink {
                Tire_Inspection()
            } label: {
                Text("Tire Inspection")
                    .font(.system(size: 30))
            }
            Button(action: {
                firebaseClass.pullCurrentCar()
            }, label: {
                Text("Log currentCar To Console")
                    .font(.system(size: 30))
            })
        }
    }
}

#Preview(body: {
    MainInspection()
})
