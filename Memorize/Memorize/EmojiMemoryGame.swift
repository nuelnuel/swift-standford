//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Ramón Núñez on 27/06/23.
//


import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["😂","😝","😁","😱","👉","🙌","🍻","🔥","🌈","☀","🎈","🌹","💄","🎀","⚽","🎾","🏁","😡","👿","🐻","🐶","🐬","🐟","🍀","👀","🚗","🍎","💝","💙"]
    
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            emojis[pairIndex]
            
        }
    }
    
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<Card> {
         model.cards
    }
    
    // MARK: –Intent(s)
    
    func choose(_ card: Card){
        model.choose(card)
    }
}


    


//Be an intermediary between de model and view
// MVVM ARQUITECTURE
