//
//  ContentView.swift
//  FinalProject
//
//  Created by scholar on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    @Binding var name: String
    var body: some View {
        NavigationStack{
          ZStack{
            Image("5")
              .resizable()
              .ignoresSafeArea()
            VStack(spacing: 85.0) {
                Text("Welcome, \(name)!")
                    .font(.custom("Outfit", size: 45))
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.947, saturation: 0.969, brightness: 0.303))
                    .shadow(radius: 3)
              Text("I'm in my...")
                .font(.custom("Outfit", size: 45))
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.947, saturation: 0.969, brightness: 0.303))
                .padding(.bottom, 75.0)
                .shadow(radius: 3)
              VStack(spacing: 25.0) {
                NavigationLink(destination: FunView()) {
                  Text("Fun Mode")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.663, saturation: 0.675, brightness: 0.52))
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(15)
                }
                NavigationLink(destination: RestView()) {
                  Text("Rest Mode")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.663, saturation: 0.675, brightness: 0.52))
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(15)
                }
                NavigationLink(destination: iAmFeeling()) {
                  Text("Work Mode")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.663, saturation: 0.675, brightness: 0.52))
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(15)
                    
                }
              }
            }
          }
        }
      }
    }











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: .constant(""))
    }
}
