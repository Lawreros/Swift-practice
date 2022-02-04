//
//  ContentView.swift
//  Swift-practice
//
//  Created by Ross on 1/30/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗","🛵","🚂","🚁","🚑","✈️","🚜"]
    @State var emojiCount = 5 //number of rectangles that we want
    
    var body: some View {
        VStack{
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65, maximum: 100))]){
                    ForEach(emojis[0...emojiCount], id: \.self){ emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
                .padding(.horizontal)
                .foregroundColor(.red)
            }
            
        }
        
    }
}

struct CardView: View{
    @State var isFaceUp: Bool = true
    
    var content: String
    
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp {
                shape.fill()
                    .foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                
                Text(content)
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
