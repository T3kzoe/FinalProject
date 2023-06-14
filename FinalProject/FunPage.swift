//
//  FunPage.swift
//  FinalProject
//
//  Created by Vivien Chen on 6/14/23.
//

import SwiftUI

struct FunPage: View {
    var quotes = ["It’s okay to take breaks and have fun sometimes.\"\n\n ― Elite Founder", "When he worked, he really worked. But when he played, he really played.\" \n\n -Dr. Seuss",
    "We’re so busy watching out for what’s just ahead of us that we don’t take time to enjoy where we are.\" \n\n-Bill Watterson",
    "If you’re not having fun, you’re doing something wrong.\"\n\n -Groucho Marx", "The life you have left is a gift. Cherish it. Enjoy it now, to the fullest. Do what matters, now.\" \n\n-Leo Babauta", "I think I’ll work all my life. When you’re having fun, why stop having fun?\" \n\n-Helen Thomas", "You must have discipline to have fun.\"\n\n -Julia Child", "You have one life. Live it! Enjoy it!\"\n\n -Izey Victoria Odiase", "Never underestimate the importance of having fun.\"\n\n -Randy Pausch", "Everyone needs fun, especially the devout because the devout often limits his life with some irrational boring rules!\"\n\n -Mehmet Murat ildan", "In between goals is a thing called life that has to be lived and enjoyed.\"\n\n -Sid Caesar", "Live and work but do not forget to play, to have fun in life and really enjoy it.\"\n\n-Eileen Caddy", "You’ve got to have fun along the way.\"\n\n -Victoria Beckham", "Work hard, have fun and make history.\n\n-Jeff Bezos", "“Life isn’t just to be endured, it’s to be enjoyed.\"\n\n - Gordon B.Hinckley"]
    var images = ["fun1","fun2","fun3","fun4","fun5","fun6","fun7","fun8","fun9","fun10","fun11","fun12","fun13","fun14","fun15"]
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

struct FunPage_Previews: PreviewProvider {
    static var previews: some View {
        FunPage()
    }
}
