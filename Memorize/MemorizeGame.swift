//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Bowen on 2021/12/15.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    init(numberOfPairsOfCards: Int){
        
    }
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
