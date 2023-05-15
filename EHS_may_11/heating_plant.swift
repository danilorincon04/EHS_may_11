//
//  Heating_Plant_Permit.swift
//  IOS_prototype2
//
//  Created by Thayer on 4/27/23.
//

import SwiftUI
//
struct Heating_Plant_Permit: View {
    @State private var HP_space_identification : String = ""
    @State private var HP_work_to_be_performed: String = ""
    @State private var HP_pre_entry_briefing_and_participants: String = ""
    @State private var HP_Authorized_entrants: String = ""
    @State private var HP_energy_sources_locked_out_and_tag_out = false
    @State private var HP_isolated_with_signs_and_barriers = false
    @State private var HP_space_drained_and_cooled = false
    @State private var HP_ventillation_30_minutes_before_entry = false
    @State private var HP_fireside_1_02: String = ""
    @State private var HP_fireside_2_02: String = ""
    @State private var HP_fireside_1_FLM: String = ""
    @State private var HP_fireside_2_FLM: String = ""
    @State private var HP_fireside_1_CO: String = ""
    @State private var HP_fireside_2_CO: String = ""
    @State private var HP_fireside_1_H2S: String = ""
    @State private var HP_fireside_2_H2S: String = ""
    var body: some View {
        Form {
            Section( header: Text("Confined Space Permit")) {
                HStack {
                    Text("Space Identification")
                    TextField(text: $HP_space_identification, prompt: Text("Required")) {
                        Text("Space Identification")
                    }
                }
                HStack {
                    Text("Work to be performed")
                    TextField(text: $HP_work_to_be_performed, prompt: Text("Required")) {
                        Text("Work to be performed")
                    }
                }
                HStack {
                    Text("Pre entry briefing and participants")
                    TextField(text: $HP_pre_entry_briefing_and_participants, prompt: Text("Required")) {
                        Text("Pre entry briefing and participants")
                    }
                }
                
            }
        }
    }
}
struct Heating_Plant_Permit_Previews: PreviewProvider {
    static var previews: some View {
        Heating_Plant_Permit()
    }
}

