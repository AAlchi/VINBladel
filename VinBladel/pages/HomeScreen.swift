//
//  HomeScreen.swift
//  VinBladelNew
//
//  Created by Ali Alchikh Ibrahim on 2/6/24.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                Image("Motorist.org")
                    .resizable()
                    .frame(width: geo.size.width * 0.5)
                Spacer()
                VStack {
                    NavigationLink(destination: ScanVinPage()) {
                        Text("Scan Vin")
                            .frame(width: geo.size.width * 0.8)
                            .padding()
                            .background(Color.orange)
                            .foregroundStyle(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 3.0))
                            .bold()
                            .font(.system(size: 30, design: .default))
                    }
                    NavigationLink(destination: ManualVinPage()) {
                        Text("Enter Vin")
                            .frame(width: geo.size.width * 0.8)
                            .padding()
                            .background(Color.orange)
                            .foregroundStyle(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 3.0))
                            .bold()
                            .font(.system(size: 30, design: .default))
                    }
                    NavigationLink(destination: CustomerListView()) {
                        Text("Customer List")
                            .frame(width: geo.size.width * 0.8)
                            .padding()
                            .background(Color.orange)
                            .foregroundStyle(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 3.0))
                            .bold()
                            .font(.system(size: 30, design: .default))
                    }
                }
                .padding(.bottom)
                .padding(.bottom)
            }
        }
    }
}

