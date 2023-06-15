//
//  RestPage.swift
//  FinalProject
//
//  Created by Vivien Chen on 6/14/23.
//

import SwiftUI

struct RestPage: View {
    var quotes = ["\"There is virtue in work and there is virtue in rest. Use both and overlook neither.\" \n\n— Alan Cohen",
                  
                  "\"It’s precisely those who are busiest who most need to give themselves a break.\" \n\n— Pico Iyer, The Art of Stillness",

                  "\"If you get tired, learn to rest, not to quit.\" \n\n— Bansky",

                  "\"No matter how strong or strong-willed you are, you cannot live a stressful, maxed-out life without that pace eventually biting you in the butt. It is necessary to take breaks, set parameters, and be kind to yourself if you want to continue making an impact in your little corner of the world.\" \n\n― Cynthia Mendenhall, author",

                  "\"In this game, everyone needs a break to refuel, recharge, and jump back in full throttle.\"\n\n ― Helen Edwards, author",

                  "\"The most valuable thing we can do for the psyche, occasionally, is to let it rest, wander, live in the changing light of room, not try to be or do anything whatever.\" \n\n― May Sarton, poet",

                  "\"Sometimes the most productive thing you can do is relax\". \n\n-Mark Black",

                  "\"As important as it is to have a plan for doing work, it is perhaps more important to plan for rest, relaxation, self-care, and sleep.\" \n\n- Akiroq Brost",

                  "\"It’s okay to take a break\" \n\n- unknown",

                  "\"Disconnect to reconnect\" \n\n- unknown ",

                  "\"Reminder… It’s okay to stop and rest or take a break when you need one.\" \n\n- unknown",

                  "\"Once in a while you need to take a break and visit yourself.\" \n\n― Audrey Giorgi",

                  "\"Sometimes when we take a break, we may find that solutions then present themselves.\" \n\n― Catherine Pulsifer",

                  "\"The time to slow down is when you think you don't have time for it.\" \n\n- unknown",

                  "\"Don't underestimate the power of resting. It builds you back unlike anything.\" \n\n -Hiral Nagda"
                 ]
    var images = ["rest1","rest2","rest3","rest4","rest5","rest6","rest7","rest8","rest9","rest10","rest11","rest12","rest13","rest14","rest15"]
    func pickQuote() -> String {
        let random = Int.random(in:0..<5)
        let quote = quotes[random]
        return quote
    }
    
        func pickImage() -> String {
            let random = Int.random(in:0..<5)
            let image = images[random]
            return image
        }
        
        
        
    
    var body: some View {
        ZStack {
            let randomImage = pickImage()
            Image(randomImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            let randomQuote = pickQuote()
                  Text("\(randomQuote)")
                .font(.title2)
                .frame(width: 225)
                .lineLimit(nil)
                .padding(20)
                .background(Color(hue: 0.101, saturation: 0.54, brightness: 0.979).opacity(0.8))
                .cornerRadius(15)
                
                
        }
    }
}

struct RestPage_Previews: PreviewProvider {
    static var previews: some View {
        RestPage()
    }
}
