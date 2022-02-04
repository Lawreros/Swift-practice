//
//  MemoryGame.swift
//  Swift-practice
//
//  Created by Ross on 2/4/22.
//

import Foundation //basic library for Swift that doesn't include a lot of UI stuff

struct MemoryGame<CardContent> { //defined by the user of this struct. CardContent is a "don't care" variable
    var cards: Array<Card>
    
    func choose(_: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card { //This struct is called MemoryGame.Card outside of this struct
        var isFaceUp: Bool = false
        var isMatches: Bool = false
        var content: CardContent //want to keep this flexible as to what symbol/number/image is on the card
    }
    
}
