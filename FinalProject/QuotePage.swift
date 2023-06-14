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
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding(20)
                .background(Color(red: 138, green: 17.0, blue: 255.0, opacity: 0.1))
                .cornerRadius(15)
                
        }
    }
}

struct QuotePage_Previews: PreviewProvider {
    static var previews: some View {
        QuotePage()
    }
}
