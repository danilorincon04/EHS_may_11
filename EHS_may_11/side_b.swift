//
//  side_b.swift
//  IOS_prototype2
//
//  Created by Thayer on 4/30/23.
//

import SwiftUI

struct Side_BView: View {
    @State private var electrical_hazard = false
    @State private var fall_hazard = false
    @State private var atmospheric_hazard = false
    @State private var mechanical_hazard = false
    @State private var engulfment_flood_hazard = false
    @State private var PPE_available_donned = false
    @State private var if_yes_describe: String = ""
    @State private var fresh_air_calibration_at_site_initial: String = ""
    @State private var O2_opening_top_string: String = ""
    @State private var O2_four_feet_string: String = ""
    @State private var O2_eight_feet_string: String = ""
    @State private var O2_twelve_string: String = ""
    @State private var O2_bottom_string: String = ""
    @State private var EX_opening_top_string: String = ""
    @State private var EX_four_feet_string: String = ""
    @State private var EX_eight_feet_string: String = ""
    @State private var EX_twelve_feet_string: String = ""
    @State private var EX_bottom_string: String = ""
    @State private var CO_opening_top_string: String = ""
    @State private var CO_four_feet_string: String = ""
    @State private var CO_eight_feet_string: String = ""
    @State private var CO_twelve_feet_string: String = ""
    @State private var CO_bottom_string: String = ""
    @State private var H2S_opening_top_string: String = ""
    @State private var H2S_four_feet_string: String = ""
    @State private var H2S_eight_feet_string: String = ""
    @State private var H2S_twelve_feet_string: String = ""
    @State private var H2S_bottom_string: String = ""
    @State private var time_opening_top: String = ""
    @State private var time_four_feet: String = ""
    @State private var time_eight_feet: String = ""
    @State private var time_twelve_feet: String = ""
    @State private var time_bottom: String = ""
    
    var body: some View {
        Form{
            Section (header: Text("Work Site Hazard Assessment")) {
                Text("Work Site Hazard Assessment")
                Toggle("Electrical Hazard:", isOn: $electrical_hazard)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("Fall Hazard:", isOn: $fall_hazard)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("Atmospheric Hazard:", isOn: $mechanical_hazard)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("Englufment/Flood Hazard:", isOn: $engulfment_flood_hazard)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("PPE Available/Donned", isOn: $PPE_available_donned)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                HStack {
                    Text("If Yes Above, describe:")
                    TextField(text: $if_yes_describe, prompt: Text("Required")) {
                        Text("If Yes Above, describe:")
                    }
                }
                HStack {
                    Text("Fresh Air Calibration at Site (intitial)")
                    TextField(text: $fresh_air_calibration_at_site_initial, prompt: Text("Required")) {
                        Text("Fresh Air Calibration at Site (intitial)")
                    }
                }
            }
            Section (header: Text("Initial Test Acceptable: ")) {
                Text("O2: 19.5-23.5%")
                Text("EX: Less than 10%")
                Text("CO: 35ppm")
                Text("H2S: 10ppm")
            }
            Section (header: Text("Opening/Top")) {
                HStack {
                    Text("02")
                    TextField(text: $O2_opening_top_string, prompt: Text("Required")) {
                        Text("02")
                    }
                }
                HStack {
                    Text("Ex")
                    TextField(text: $EX_opening_top_string, prompt: Text("Required")) {
                        Text("EX")
                    }
                }
                HStack {
                    Text("CO")
                    TextField(text: $CO_opening_top_string, prompt: Text("Required")) {
                        Text("CO")
                    }
                }
                HStack {
                    Text("H2S")
                    TextField(text: $H2S_opening_top_string, prompt: Text("Required")) {
                        Text("H2S")
                    }
                }
                HStack {
                    Text("Time")
                    TextField(text: $time_opening_top, prompt: Text("Required")) {
                        Text("Time")
                    }
                }
            }
            Section(header: Text("Four Feet")) {
                HStack {
                    Text("02")
                    TextField(text: $O2_four_feet_string, prompt: Text("Required")) {
                        Text("02")
                    }
                }
                HStack {
                    Text("Ex")
                    TextField(text: $EX_four_feet_string, prompt: Text("Required")) {
                        Text("EX")
                    }
                }
                HStack {
                    Text("CO")
                    TextField(text: $CO_four_feet_string, prompt: Text("Required")) {
                        Text("CO")
                    }
                }
                HStack {
                    Text("H2S")
                    TextField(text: $H2S_four_feet_string, prompt: Text("Required")) {
                        Text("H2S")
                    }
                }
                HStack {
                    Text("Time")
                    TextField(text: $time_four_feet, prompt: Text("Required")) {
                        Text("Time")
                    }
                }
            }
            Section(header: Text("Eight Feet")) {
                HStack {
                    Text("02")
                    TextField(text: $O2_eight_feet_string, prompt: Text("Required")) {
                        Text("02")
                    }
                }
                HStack {
                    Text("Ex")
                    TextField(text: $EX_eight_feet_string, prompt: Text("Required")) {
                        Text("EX")
                    }
                }
                HStack {
                    Text("CO")
                    TextField(text: $CO_eight_feet_string, prompt: Text("Required")) {
                        Text("CO")
                    }
                }
                HStack {
                    Text("H2S")
                    TextField(text: $H2S_eight_feet_string, prompt: Text("Required")) {
                        Text("H2S")
                    }
                }
                HStack {
                    Text("Time")
                    TextField(text: $time_eight_feet, prompt: Text("Required")) {
                        Text("Time")
                    }
                }
            }
            Section(header: Text("Twelve Feet")) {
                HStack {
                    Text("02")
                    TextField(text: $O2_twelve_string, prompt: Text("Required")) {
                        Text("02")
                    }
                }
                HStack {
                    Text("Ex")
                    TextField(text: $EX_twelve_feet_string, prompt: Text("Required")) {
                        Text("EX")
                    }
                }
                HStack {
                    Text("CO")
                    TextField(text: $CO_twelve_feet_string, prompt: Text("Required")) {
                        Text("CO")
                    }
                }
                HStack {
                    Text("H2S")
                    TextField(text: $H2S_twelve_feet_string, prompt: Text("Required")) {
                        Text("H2S")
                    }
                }
                HStack {
                    Text("Time")
                    TextField(text: $time_twelve_feet, prompt: Text("Required")) {
                        Text("Time")
                    }
                }
            }
            Section (header: Text("Bottom")) {
                HStack {
                    Text("02")
                    TextField(text: $O2_bottom_string, prompt: Text("Required")) {
                        Text("02")
                    }
                }
                HStack {
                    Text("Ex")
                    TextField(text: $EX_bottom_string, prompt: Text("Required")) {
                        Text("EX")
                    }
                }
                HStack {
                    Text("CO")
                    TextField(text: $CO_bottom_string, prompt: Text("Required")) {
                        Text("CO")
                    }
                }
                HStack {
                    Text("H2S")
                    TextField(text: $H2S_bottom_string, prompt: Text("Required")) {
                        Text("H2S")
                    }
                }
                HStack {
                    Text("Time")
                    TextField(text: $time_bottom, prompt: Text("Required")) {
                        Text("Time")
                    }
                }
            }
            Section (header: Text("Atmospheric conditions")) {
                NavigationLink(destination: atmospheric_readingsView(),label: {
                    Text("Begin recording atmospheric Readings in the confined space taken during entry")
                })
            }
        }
    }
}
