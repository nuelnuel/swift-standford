//
//  ContentView.swift
//  Memorize
//
//  Created by Ramón Núñez on 25/06/23.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    
    @ObservedObject var game: EmojiMemoryGame
        
    var body: some View {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum:65))]){
                    ForEach(game.cards) {card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                game.choose(card)
                            }
                    }
                }
            }
            .padding(.horizontal)
            .foregroundColor(.red)

    }
        
}

struct CardView: View {
        let card: EmojiMemoryGame.Card
    
        var body: some View {
            ZStack{
                let shape = RoundedRectangle(cornerRadius: 20)
                if card.isFaceUp {
                    shape
                        .fill()
                        .foregroundColor(.black)
                    shape
                        .strokeBorder(lineWidth: 3)
                    Text(card.content)
                        .font(.largeTitle)
                } else if card.isMatched {
                    shape.opacity(0)
                } else {
                    shape.fill()
                    Text("?")
                        .foregroundColor(.white)
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(game: game)
        }
    }
    
    
// Differences: 1) Structs are value type (copy), class are reference type (pointers)
// 1) Functional programing vs 2) Object oriented programming
// 1) No inheritance vs 2) Inheritance
