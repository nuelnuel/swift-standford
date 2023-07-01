//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ramón Núñez on 25/06/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
