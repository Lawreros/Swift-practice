//
//  EmojiMemoryGame.swift
//  Swift-practice
//
//  Created by Ross on 2/4/22.
//

import SwiftUI

//func makeCardContent(index: Int) -> String {
//    return "😀"
//}


class EmojiMemoryGame {
    static let emojis = ["🚗","🛵","🚂","🚁","🚑","✈️","🚜","🏎","🚢","🚖"] //static means that emojis is seen globally as EmojiMemoryGame.emojis
    
    
    private var model: MemoryGame<String> =
    MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: {//(index: Int) -> String in //in seperates the arguments from the code
        //return "😀"
        pairIndex in emojis[pairIndex] //function simplified because the init of MemoryGame knows the function takes an Int and returns a String
        
    })
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
