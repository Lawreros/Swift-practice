//
//  EmojiMemoryGame.swift
//  Swift-practice
//
//  Created by Ross on 2/4/22.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {//ObservableObjects can publish to the world changes in the model that it is observing
    static let emojis = ["🚗","🛵","🚂","🚁","🚑","✈️","🚜","🏎","🚢","🚖"] //static means that emojis is seen globally as EmojiMemoryGame.emojis
    
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: {
            pairIndex in emojis[pairIndex] //function simplified because the init of MemoryGame knows the function takes an Int and returns a String
        })
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    //@Published means that any change to this variable will be published to the world
    
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        //objectWillChange.send() //send to the world that this object will change
        model.choose(card)
    }
    
}
