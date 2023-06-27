//
//  ContentView.swift
//  Memorize
//
//  Created by Ramón Núñez on 25/06/23.
//

// Me quede en el minuto 51:00 - Lecture 2
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
            
            HStack{
                remove
                Spacer()
                add
            }
            .padding(.horizontal)
            .font(.largeTitle)
            
            
        }
    }
    
    var add: some View{
        Button(action: {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        }, label: {
            VStack{
                Image(systemName: "plus.circle")
            }
            
        })
    }

    var remove: some View{
        Button(action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
            
        }, label: {
            VStack{
                Image(systemName: "minus.circle")
            }
        })
        
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
    
    
