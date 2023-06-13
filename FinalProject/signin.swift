//
//  signin.swift
//  FinalProject
//
//  Created by Vivien Chen on 6/12/23.
//

import SwiftUI

struct signin: View {
    @State var spin = false
    @State var name = ""
    @State var isChecked = false
    
    var body: some View {
        ZStack {
            Image("landscape")
                .resizable()
            VStack {
                Text("Welcome to")
                    .font(.custom("Caveat-VariableFont_wght", size: 60))
                Text("Lifetastic")
                    .rotationEffect(.degrees(spin ? 360: 0))
                    .font(.custom("Caveat-VariableFont_wght", size: 60))
                    .onAppear() {
                        self.spin.toggle()
                    }
                TextField("What's your name?", text: $name)
                    .font(.title)
                    .border(Color.blue)
                    .padding()
                    .multilineTextAlignment(.center)
                
                HStack {
                    Button(action: {
                        isChecked.toggle()
                    }, label: {
                        Image(systemName: isChecked ? "checkmark.square" : "square")
                    })
                    Text("Would you like to receive notifications?")
                }
                
            }
            .ignoresSafeArea()
        }
        
        
    }
}

struct signin_Previews: PreviewProvider {
    static var previews: some View {
        signin()
    }
}

struct ToggleCheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.square")
        }
    }
}
