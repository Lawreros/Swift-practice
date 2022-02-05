//
//  MemoryGame.swift
//  Swift-practice
//
//  Created by Ross on 2/4/22.
//

import Foundation //basic library for Swift that doesn't include a lot of UI stuff

struct MemoryGame<CardContent> { //defined by the user of this struct. CardContent is a "don't care" variable
    private(set) var cards: Array<Card>
    
    func choose(_: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {// saying Card "behaves like" Identifiable lets us use it in ForEach, as each Card struct will have a unique identifier
         
        var isFaceUp: Bool = false
        var isMatches: Bool = false
        var content: CardContent //want to keep this flexible as to what symbol/number/image is on the card
       
        var id: Int //have the associated identifier be a number
    }
    
}
