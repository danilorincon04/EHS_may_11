//
//  load_permit.swift
//  IOS_prototype2
//
//  Created by Thayer on 4/30/23.
//

import SwiftUI

struct Load_PermitView: View {
    let permits = [
    "permit number 1",
    "permit number 2",
    "permit number 3",
    "permit number 4",
    ]
    var body: some View {
        NavigationStack {
            List(permits, id: \.self) {
                permits in
                NavigationLink(destination:Side_BView(),label: {
                    Text("side b")
                })
            }
        }
    }
    
}
//
