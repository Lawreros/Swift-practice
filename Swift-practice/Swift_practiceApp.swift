//
//  Swift_practiceApp.swift
//  Swift-practice
//
//  Created by Ross on 1/30/22.
//

import SwiftUI

@main
struct Swift_practiceApp: App {
    let game = EmojiMemoryGame() //classes get a free init so can create it with just ()
    //classes are reference types, so "let game = <class>" just means that the pointer to the class stored in "game" will not change
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
