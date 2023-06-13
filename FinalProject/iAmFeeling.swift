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
        VStack(spacing: 85.0) {
            Text("I'm feeling...")
                .font(.largeTitle)
                .fontWeight(.semibold)
            VStack(spacing: 25.0) {
                Button("Sad") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Button("Mad") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Button("Happy") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            Text("I've been working for:")
                .font(.title)
                .fontWeight(.semibold)
            VStack {
                Text("\(hours):\(minutes):\(seconds)")
                if timerIsPaused {
                    HStack {
                        Button(action:{
                            print("RESTART")
                        }){
                            Image(systemName: "backward.end.alt")
                                .padding(.all)
                        }
                        .padding(.all)
                        Button(action:{
                            self.startTimer()
                            print("START")
                        }){
                            Image(systemName: "play.fill")
                                .padding(.all)
                        }
                        .padding(.all)
                    }
                } else {
                    Button(action:{
                        print("STOP")
                        self.stopTimer()
                    }){
                        Image(systemName: "stop.fill")
                            .padding(.all)
                    }
                    .padding(.all)
                }
            }
            HStack(spacing: 65.0) {
                Button("Home") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                Button("Rest") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                Button("Fun") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .bold()
                .font(.title2)
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
        
}

struct iAmFeeling_Previews: PreviewProvider {
    static var previews: some View {
        iAmFeeling()
    }
}
