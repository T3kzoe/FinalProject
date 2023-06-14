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
        NavigationStack{
            ZStack {
                Image("landscape1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Text("Welcome to")
                            .fontWeight(.bold)
                        
                            .foregroundColor(Color(hue: 0.947, saturation: 0.969, brightness: 0.303))
                            .font(.custom("Caveat-VariableFont_wght", size: 60))
                            .shadow(radius: 3)
                        Text("Lifetastic")
                            .rotationEffect(.degrees(spin ? 360: 0))
                            .font(.custom("Caveat-VariableFont_wght", size: 70))
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                            .onAppear() {
                                self.spin.toggle()
                            }
                            .padding(-6.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                        
                    }
                    .padding(.top, 140.0)
                    .padding(.bottom,30)
                    
                    Spacer()
                    
                    VStack{
                        TextField("What's your name?", text: $name)
                            .font(.title)
                            
                            .multilineTextAlignment(.center)
                            .fontWeight(.semibold)
                            .padding(7)
                            .overlay( /// apply a rounded border
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color(hue: 0.639, saturation: 0.969, brightness: 0.303), lineWidth: 2).padding(.horizontal)
                            )
                        
                        
                        HStack {
                            Button(action: {
                                isChecked.toggle()
                            }, label: {
                                Image(systemName: isChecked ? "checkmark.square" : "square")
                                    .foregroundColor(Color(hue: 0.639, saturation: 0.969, brightness: 0.303))
                                
                            })
                            Text("Would you like to receive notifications?")
                                .fontWeight(.semibold)
                        }
                        .padding(/*@START_MENU_TOKEN@*/.bottom, 245.0/*@END_MENU_TOKEN@*/)
                        .padding(.top,10)
                        .ignoresSafeArea()
                        .toolbar {
                            ToolbarItemGroup(placement: .status) {
                                NavigationLink(destination: ContentView(name:$name)) {
                                    Text("Next >>")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(hue: 0.665, saturation: 0.675, brightness: 0.52))
                                        .padding(.leading, 250.0)
                    
                                }
                                
                            }
                        
                        }
                        
                    }
                }
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
        }
        
