//
//  QuotePage.swift
//  FinalProject
//
//  Created by Vivien Chen on 6/13/23.
//

import SwiftUI

struct QuotePage: View {
    var body: some View {
        ZStack {
            Image("meadow")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            Text("\"Success isn’t always about greatness. It’s about consistency. Consistent hard work leads to success. Greatness will come.\" \n\n -Dwayne Johnson")
                .font(.title2)
                .frame(width: 225)
                .lineLimit(nil)
                .padding(20)
                .background(Color.orange.opacity(0.5))
                .cornerRadius(15)
                
                
        }
    }
}

struct QuotePage_Previews: PreviewProvider {
    static var previews: some View {
        QuotePage()
    }
}
