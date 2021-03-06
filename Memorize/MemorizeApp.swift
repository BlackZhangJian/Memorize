//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Bowen on 2021/12/15.
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
