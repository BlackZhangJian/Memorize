//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Bowen on 2021/12/15.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    static let emojis:Array = ["🐶","🐱","🦊","🙈","🦁","🐴","🦞","🦖","🦋","🐳","🦀","🪲","🐠","🐥","🐷","🦉","🐇","🐞","🐙","🕷","🦧","🐲","🪰","🐌","🐼","🐢","🐡","🐍"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    }

    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
