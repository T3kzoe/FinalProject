//
//  ContentView.swift
//  FinalProject
//
//  Created by scholar on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //@State private var name = ""
        NavigationStack {
            VStack {
                Text("Nice to see you 'name'")
                    .foregroundColor(Color(red: 0.62, green: 0.0, blue: 0.0))
                    .padding()
                    .padding()
                NavigationLink(destination:signin()) {
                    Text("Fun Mode")
                    
                }
                NavigationLink(destination:/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Text("Rest Mode")
                }
                NavigationLink(destination: iAmFeeling()) {
                    Text("Work Mode")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
