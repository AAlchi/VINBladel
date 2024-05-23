//
//  ContentView.swift
//  VinBladel
//
//  Created by Ali AI on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    @State var firebaseClass:FirebaseClass = FirebaseClass()
    @State var inspectionDataClass:InspectionDataClass = InspectionDataClass()
    var body: some View {
        HomeScreen()
            .environmentObject(firebaseClass)
            .environmentObject(inspectionDataClass)
    }
}

#Preview {
    ContentView()
}
