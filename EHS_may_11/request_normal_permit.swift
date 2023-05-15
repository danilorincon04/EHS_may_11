//
//  request_normal_permit.swift
//  IOS_prototype2
//
//  Created by Thayer on 4/30/23.
//

import SwiftUI

struct Request_normal_PermitView: View {
    let confinedSpaces = [
    "confined space number 1",
    "confined space number 2",
    "confined space number 3",
    "confined space number 4",
    ]
    var body: some View {
        NavigationStack {
            List(0..<4,id:\.self) {
                index in let confinedSpaces = "sideb\(index+1)"
                NavigationLink(destination: Side_AView(),label: {
                    Text(confinedSpaces)
                })
            }
        }
    }
}
