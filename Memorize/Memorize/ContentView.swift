//
//  ContentView.swift
//  Memorize
//
//  Created by Ramón Núñez on 25/06/23.
//

import SwiftUI

struct ContentView: View {
    
    var emojis: Array = ["😂","😝","😁","😱","👉","🙌","🍻","🔥","🌈","☀","🎈","🌹","💄","🎀","⚽","🎾","🏁","😡","👿","🐻","🐶","🐬","🐟","🍀","👀","🚗","🍎","💝","💙","👌","❤","😍","😉","😓","😳","💪","💩","🍸","🔑","💖","🌟","🎉","🌺","🎶","👠","🏈","⚾","🏆","👽","💀","🐵","🐮","🐩","🐎","💣","👃","👂","🍓","💘","💜","👊","💋","😘","😜","😵","🙏","👋","🚽","💃","💎","🚀","🌙","🎁","⛄","🌊","⛵","🏀","🎱","💰","👶","👸","🐰","🐷","🐍","🐫","🔫","👄","🚲","🍉","💛","💚"]
    
    @State var emojiCount = 20
    
    var body: some View {
        VStack {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum:65))]){
                    ForEach(emojis[0..<emojiCount], id: \.self) {emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            
            Spacer()
            
        }
    }
        
}




struct CardView: View {
        var content: String
        @State var isFaceUp: Bool = true
        var body: some View {
            ZStack{
                let shape = RoundedRectangle(cornerRadius: 20)
                if isFaceUp {
                    shape
                        .fill()
                        .foregroundColor(.black)
                    shape
                        .strokeBorder(lineWidth: 3)
                    Text(content)
                        .font(.largeTitle)
                } else {
                    shape.fill()
                    Text("?")
                        .foregroundColor(.white)
                }
            }
            .onTapGesture{
                isFaceUp = !isFaceUp
            }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
// Differences: 1) Structs are value type (copy), class are reference type (pointers)
// 1) Functional programing vs 2) Object oriented programming
// 1) No inheritance vs 2) Inheritance
