//
//  iAmFeeling.swift
//  FinalProject
//
//  Created by Letícia Nhaúle on 6/13/23.
//

import SwiftUI

struct iAmFeeling: View {
    
    @State var hours: Int = 0
    @State var minutes: Int = 0
    @State var seconds: Int = 0
    @State var timerIsPaused: Bool = true
    
    @State var timer: Timer? = nil
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                VStack(spacing: 85.0) {
                    Text("I'm feeling...")
                        .font(.custom("Caveat-VariableFont_wght", size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.947, saturation: 0.969, brightness: 0.303))
                        .shadow(radius: 3)
                    VStack(spacing: 25.0) {
                        NavigationLink(destination: QuotePage()) {
                            Text("Sad")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(hue: 0.663, saturation: 0.675, brightness: 0.52)).padding(10)
                                .background(Color.white.opacity(0.5))
                                .cornerRadius(15)
                        }
                        NavigationLink(destination: QuotePage()) {
                            Text("Mad")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(hue: 0.663, saturation: 0.675, brightness: 0.52))
                                .padding(10)
                                .background(Color.white.opacity(0.5))
                                .cornerRadius(15)
                        }
                        NavigationLink(destination: QuotePage()) {
                            Text("Happy")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(hue: 0.663, saturation: 0.675, brightness: 0.52)).padding(10)
                                .background(Color.white.opacity(0.5))
                                .cornerRadius(15)
                        }
                    }
                    Text("I've been working for:")
                        .foregroundColor(Color(hue: 0.127, saturation: 0.04, brightness: 0.974))
                        .shadow(radius: 3)
                        .font(.title)
                        .fontWeight(.semibold)
                    VStack {
                        Text("\(hours):\(minutes):\(seconds)")
                            .font(.custom("Caveat-VariableFont_wght", size: 35))
                            .padding(/*@START_MENU_TOKEN@*/.horizontal, 40.0/*@END_MENU_TOKEN@*/)
                            .padding(.vertical, 4.0)
                            .background(Color(hue: 0.552, saturation: 0.14, brightness: 0.938))
                        if timerIsPaused {
                            HStack {
                                Button(action:{
                                    self.restartTimer()
                                    print("RESTART")
                                    
                                }){
                                    Image(systemName: "backward.end.alt")
                                        .padding(.all, 6.0)
                                        .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(Color(hue: 0.552, saturation: 0.14, brightness: 0.938))
                                }
                                .padding(.all)
                                Button(action:{
                                    self.startTimer()
                                    print("START")
                                }){
                                    Image(systemName: "play.fill")
                                        .padding(.all, 6.0)
                                        .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                                    
                                        .foregroundColor(Color(hue: 0.552, saturation: 0.14, brightness: 0.938))
                                }
                                .padding(.all)
                            }
                        } else {
                            Button(action:{
                                print("STOP")
                                self.stopTimer()
                            }){
                                Image(systemName: "stop.fill")
                                    .foregroundColor(Color(hue: 0.552, saturation: 0.14, brightness: 0.938))
                                    .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                            }
                            .padding(.all)
                        }
                        
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .status) {
                            
                            NavigationLink(destination: RestView()) {
                                Text("Rest")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(hue: 0.663, saturation: 0.675, brightness: 0.52))
                                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                    .background(Color(hue: 0.552, saturation: 0.14, brightness: 0.938))
                                    .cornerRadius(15)
                            }
                            NavigationLink(destination: FunView()) {
                                Text("Fun")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(hue: 0.663, saturation: 0.675, brightness: 0.52))
                                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                                    .background(Color(hue: 0.552, saturation: 0.14, brightness: 0.938))
                                    .cornerRadius(15)
                                
                            }
                            
                        }
                    }
                }
            }
        }
    }
    
    func startTimer() {
        timerIsPaused = false
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ tempTimer in
            if self.seconds == 59 {
                self.seconds = 0
                if self.minutes == 59 {
                    self.minutes = 0
                    self.hours = self.hours + 1
                } else {
                    self.minutes = self.minutes + 1
                }
            } else {
                self.seconds = self.seconds + 1
            }
        }
    }
    
    func stopTimer(){
        timerIsPaused = true
        timer?.invalidate()
        timer = nil
    }
    
    func restartTimer(){
        self.hours = 0
        self.minutes = 0
        self.seconds = 0
    }
}

struct iAmFeeling_Previews: PreviewProvider {
    static var previews: some View {
        iAmFeeling()
    }
}
