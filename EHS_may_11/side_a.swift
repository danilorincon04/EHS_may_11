//
//  side_a.swift
//  IOS_prototype2
//
//  Created by Thayer on 4/30/23.
//

import SwiftUI

struct Side_AView: View {
    //@State private var date: String = ""
    @State private var time: String = ""
    @State private var work_to_perform: String = ""
    @State private var entry_supervisor: String = ""
    @State private var entrant: String = ""
    @State private var attendant: String = ""
    @State private var entry_supervisor_trained = false
    @State private var entrant_trained = false
    @State private var attendant_trained = false
    @State private var tripod = false
    @State private var harness = false
    @State private var lifeline = false
    @State private var ventilaiton_blower = false
    @State private var two_way_radio = false
    @State private var direct_read_gas_meter = false
    @State private var barricades = false
    @State private var PPE_required = false
    @State private var entry_equipment_other: String = ""
    @State private var site_control_plan: String = ""
    @State private var communication_plan: String = ""
    @State private var rescue_plan: String = ""
    var body: some View {
        Form {
            Section( header: Text("General Information")) {
                HStack {
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                }
                HStack {
                    Text("time")
                    TextField(text: $time, prompt: Text("Required")) {
                        Text("time")
                    }
                }
                HStack {
                    Text("Work to perform")
                    TextField(text: $work_to_perform, prompt: Text("Required")) {
                        Text("Work to Perform")
                    }
                }
                HStack {
                    Text("Entry Supervisor")
                    TextField(text: $entry_supervisor, prompt: Text("Required")) {
                        Text("entry supervisor")
                    }
                }
                Toggle("Is entry supervisor trained?", isOn: $entry_supervisor_trained)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                HStack {
                    Text("Entrant")
                    TextField(text: $entrant, prompt: Text("Required")) {
                        Text("Entrant")
                    }
                }
                Toggle("Is entrant trained?", isOn: $entrant_trained)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                HStack {
                    Text("Attendant")
                    TextField(text: $attendant, prompt: Text("Required")) {
                        Text("Attendant")
                    }
                }
                Toggle("Is attendant trained?", isOn: $attendant_trained)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
            }
            Section(header: Text("Entry Equipment")) {
                Toggle("Tripod", isOn: $tripod)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("Harness", isOn: $harness)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("Lifeline", isOn: $lifeline)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("Ventilation/Blower", isOn: $ventilaiton_blower)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("Two Way Radio", isOn: $two_way_radio)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("Direct Read Gas Meter", isOn: $direct_read_gas_meter)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("Barricades", isOn: $barricades)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                Toggle("PPE Required: ", isOn: $PPE_required)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                HStack {
                    Text("Other")
                    TextField(text: $entry_equipment_other, prompt: Text("Required")) {
                        Text("Other")
                    }
                }
            }
            Section(header: Text("Plan")) {
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Gas Monitor Calibration Completed by/date:") })
                HStack {
                    Text("Site Control Plan")
                    TextField(text: $site_control_plan, prompt: Text("Required")) {
                        Text("Site Control Plane")
                    }
                }
                HStack {
                    Text("Communication Plan")
                    TextField(text: $communication_plan, prompt: Text("Required")) {
                        Text("Communication Plan")
                    }
                }
                HStack {
                    Text("Resue Plan")
                    TextField(text: $rescue_plan, prompt: Text("Required")) {
                        Text("Rescue Plan")
                    }
                }
            }
            Section {
                
                Button(action: {
                    // Set up the URL for the server-side script
                    let url = URL(string: "https://danilori.host.dartmouth.edu/php_side_b_prototype")!

                    // Set up the HTTPS request
                    var request = URLRequest(url: url)
                    request.httpMethod = "POST"

                    // Set up the request body with the data to upload. I deleted ' "time":time to see whehter that was messing everything up
                    let params: [String: Any] = ["work_to_perform": work_to_perform,"entry_supervisor": entry_supervisor,"entrant": entrant,"attendant": attendant,"entry_supervisor_trained":entry_supervisor_trained,"entrant_trained":entrant_trained,"attendant_trained":attendant_trained,"tripod":tripod,"harness":harness,"lifeline":lifeline,"ventilaiton_blower":ventilaiton_blower,"two_way_radio":two_way_radio,"direct_read_gas_meter":direct_read_gas_meter,"barricades":barricades,"PPE_required":PPE_required,"entry_equipment_other":entry_equipment_other,"site_control_plan":site_control_plan,"communication_plan":communication_plan, "rescure_plan":rescue_plan]
                    let body = try? JSONSerialization.data(withJSONObject: params)
                    request.httpBody = body

                    // Send the HTTPS request
                    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                        // Handle the server response
                        if let error = error {
                            print("Error: \(error)")
                            return
                        }
                        guard let data = data else {
                            print("Error: No data received")
                            return
                        }

                        if let responseString = String(data: data, encoding: .utf8) {
                            print("Response: \(responseString)")
                        } else {
                            print("Error: Data received is not valid UTF-8")
                        }
                    }
                    task.resume()
                }) {
                    Text("Submit")
                }
                
                NavigationLink(destination: approvalView(), label: {
                    Text("Send permit for approval")
                })
                    .frame(width: 200, height: 50)
                    .bold()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

