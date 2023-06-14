//
//  QuotePage.swift
//  FinalProject
//
//  Created by Vivien Chen on 6/13/23.
//

import SwiftUI

struct QuotePage: View {
    var quotes = ["Success isn’t always about greatness. It’s about consistency. Consistent hard work leads to success. Greatness will come.\"  \n\n -Dwayne - The Rock - Johnson",
                  "Dreams can come true, but there is a secret. They’re realized through the magic of persistence, determination, commitment, passion, practice, focus and hard work. They happen a step at a time, manifested over years, not weeks.\" \n\n -Elbert Hubbard",
                  "Perseverance is the hard work you do after you get tired of doing the hard work you already did.\" \n\n -Newt Gingrich",
                  "If you go to work on your goals, your goals will go to work on you. If you go to work on your plan, your plan will go to work on you. Whatever good things we build end up building us.\" \n\n -Jim Rohn",
                  "Work hard in silence; let success make the noise.\" \n\n -Frank Ocean",
                  "What comes easy won’t last. What lasts won’t come easy.\" \n\n -Unknown",
                  "Satisfaction lies in the effort, not in the attainment.\"  \n\n –Mahatma Gandhi","Keep your head in the game.\" \n\n–unknown",
                  "The price of success is hard work, dedication to the job at hand, and the determination that whether we win or lose, we have applied the best of ourselves to the task at hand.\" –Vince Lombardi",
                  "If you try and lose then it isn’t your fault. But if you don’t try and lose, then it’s all your fault.\" -Orson Scott Card",
                  "Hard work does pay off. \"-Michael Phelps",
                  "We think, mistakenly, that success is the result of the amount of time we put in at work, instead of the quality of time we put in.\"-Ariana Huffington",
                  "There is no development physically or intellectually without effort, and effort means work.\"-Calvin Coolidge",
                  "Successful people are not gifted; they just work hard, then succeed on purpose. \"-G.K. Neilson"
]
    var images = ["work1", "work2","work3","work4","work5","work6","work7","work8","work9","work10","work11","work12","work13","work14","work15",]
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
                  Text("\"\(randomQuote)")
                .font(.title2)
                .frame(width: 225)
                .lineLimit(nil)
                .padding(20)
                .background(Color(hue: 0.101, saturation: 0.54, brightness: 0.979).opacity(0.8))
                .cornerRadius(15)
                
                
        }
    }
}

struct QuotePage_Previews: PreviewProvider {
    static var previews: some View {
        QuotePage()
    }
}
