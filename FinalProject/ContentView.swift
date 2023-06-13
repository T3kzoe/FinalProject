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
                padding()
                padding()
                NavigationLink(destination:/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Text("Fun Mode")
                }
                NavigationLink(destination:/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Text("Rest Mode")
                }
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Text("Work Mode")
                }
                
                
            }
        }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }
}

