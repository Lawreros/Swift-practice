//
//  ContentView.swift
//  Swift-practice
//
//  Created by Ross on 1/30/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗","🛵","🚂","🚁","🚑","✈️","🚜"]
    @State var emojiCount = 3 //number of rectangles that we want
    
    var body: some View {
        VStack{//Verticle Stack (From the top down)
            HStack{//Horizontal Stack
    //            CardView(content: emojis[0])
    //            CardView(isFaceUp: false,content: emojis[1]) //overrides any default value for a variable inside the struct/view
    //            CardView(content: emojis[2])
    //            CardView(content: emojis[3])
                
                ForEach(emojis[0...emojiCount], id: \.self){ emoji in // the id: \.self assigns each emoji an identifier that is itself. So the string "🚗" now has its id = "🚗". So in a dict sense {🚗:"🚗", 🚁:"🚁"}
                    CardView(content: emoji)
                }
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            
            HStack{
                remove //button view defined below
                Spacer() //takes up as much space as possible
                add //button view defined below
            }
            .font(.largeTitle)//the font size extends to certain image types if supported by apple
            .padding(.horizontal)
        }
        
    }
    
    var remove: some View {
        Button(action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }, label:{
//            VStack {
//                Text("Remove")
//                Text("Card")
//            }
            Image(systemName: "minus.circle")
        })
    }
    
    var add: some View {
        Button(action: {
            if emojiCount < emojis.count-1 {
                emojiCount += 1
            }
        }, label:{
//            VStack {
//                Text("Add")
//                Text("Card")
//            }
            Image(systemName: "plus.circle")
        })
    }
}

struct CardView: View{
    @State var isFaceUp: Bool = true //all variables have to have an initial value or be provided one as an argument (get rid of "= true" and put "isFaceUp: true" in the arguments of the "CardView()" stuff above
    
    //@State points to some external memory. Because Views/structs are immutable but also run through all of the functions they contain each time they are called, this allows for a somewhat hacky way to change the view state.
    
    var content: String
    
    var body: some View{// this is a var because it changes every time someone asks for it, as it excutes the contained function(s) to determine its value
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20) //can make local variables of repeated views/functions
            
            if isFaceUp {
                shape.fill()
                    .foregroundColor(.white)
            
                shape.stroke(lineWidth: 3)//stroke view modifier now makes this view all about the border. If you were to put .fill(.white) at the end of this view, you would actually be filling the outline view made by stroke.
            
                Text(content)
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp //isFaceUp is a value stored outside of the struct
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() //Can be modified, click on it
            .preferredColorScheme(.dark)
        //Can make a second simulator to see different things
        //ContentView()
    }
}
