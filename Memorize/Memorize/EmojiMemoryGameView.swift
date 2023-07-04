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
                LazyVGrid(columns: [GridItem(.adaptive(minimum:100))]){
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
            GeometryReader(content: { geometry in
                ZStack{
                    let shape = RoundedRectangle(cornerRadius: DrawingConstants.cornerRadius)
                    if card.isFaceUp {
                        shape
                            .fill()
                            .foregroundColor(.black)
                        shape
                            .strokeBorder(lineWidth: DrawingConstants.lineWidth)
                        Text(card.content)
                            .font(font(in: geometry.size))
                    } else if card.isMatched {
                        shape.opacity(0)
                    } else {
                        shape.fill()
                        Text("?")
                            .foregroundColor(.white)
                    }
                }
            })

            }
    
    private func font(in size: CGSize) -> Font {
        Font.system(size: min(size.width, size.height) * DrawingConstants.fontScale)
    }

    private struct DrawingConstants {
        static let cornerRadius: CGFloat = 20
        static let lineWidth: CGFloat = 3
        static let fontScale: CGFloat = 0.8
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
