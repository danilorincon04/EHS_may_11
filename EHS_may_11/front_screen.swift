//
//  front_screen.swift
//  IOS_prototype2
//
//  Created by Thayer on 4/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: Request_PermitView(), label: {
                    Text("Request Permit")
                })
                    .frame(width: 200, height: 100)
                    .bold()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                NavigationLink(destination: Load_PermitView(), label: {
                    Text("Load Permit")
                })
                    .frame(width: 200, height: 100)
                    .bold()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .navigationBarTitle("Home", displayMode: .inline)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}
