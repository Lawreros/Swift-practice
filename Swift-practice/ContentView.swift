//
//  ContentView.swift
//  Swift-practice
//
//  Created by Ross on 1/30/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{//Horizontal Stack
            CardView()
            CardView(isFaceUp: false) //overrides any default value for a variable inside the struct/view
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView: View{
    var isFaceUp: Bool = true //all variables have to have an initial value or be provided one as an argument (get rid of "= true" and put "isFaceUp: true" in the arguments of the "CardView()" stuff above
    
    
    var body: some View{// this is a var because it changes every time someone asks for it, as it excutes the contained function(s) to determine its value
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20) //can make local variables of repeated views/functions
            
            if isFaceUp {
                shape.fill()
                    .foregroundColor(.white)
            
                shape.stroke(lineWidth: 3)//stroke view modifier now makes this view all about the border. If you were to put .fill(.white) at the end of this view, you would actually be filling the outline view made by stroke.
            
                Text("✈️")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                
            }
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
