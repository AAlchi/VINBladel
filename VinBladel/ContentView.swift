//
//  ContentView.swift
//  VinBladel
//
//  Created by Ali AI on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var firebaseClass = FirebaseClass()
    var body: some View {
        HomeScreen() 
    }
}

#Preview {
    ContentView()
}
