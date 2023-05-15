//
//  request_permit_heat_or_other.swift
//  IOS_prototype2
//
//  Created by Thayer on 4/30/23.
//

import SwiftUI
//
struct Request_PermitView: View {
    var body: some View{
        VStack {
            NavigationLink(destination: Heating_Plant_Permit(),label: {
                Text("Heating Plant")
            })
            NavigationLink(destination: Request_normal_PermitView(), label: {
                Text("Other Spaces")
            } )
        }
    }
}

