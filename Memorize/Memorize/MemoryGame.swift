//
//  MemoryGame.swift
//  Memorize
//
//  Created by Ramón Núñez on 27/06/23.
//

import Foundation


struct MemoryGame<CardContent>{
    
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card){
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards{
            var content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
            }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatch: Bool = false
        var content: CardContent
    }
    
}

