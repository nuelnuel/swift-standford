//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ramón Núñez on 25/06/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
