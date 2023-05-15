//
//  ContentView.swift
//  IOS_prototype2
//
//  Created by Thayer on 3/31/23.
//

import SwiftUI
import MySQLNIO
import MySQLKit



struct atmospheric_readingsView: View {
    var body: some View {
        Text("atmospheric readings")
    }
}


struct approvalView: View {
    @State private var approval_email: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("E-mail")
                TextField(text: $approval_email, prompt: Text("Required")) {
                    Text("E-mail")
                }
            }
            Button("Send permit") {
            }
        }
        
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

