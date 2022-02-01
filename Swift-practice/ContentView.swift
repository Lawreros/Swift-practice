//
//  ContentView.swift
//  Swift-practice
//
//  Created by Ross on 1/30/22.
//

import SwiftUI //just like python, imports the library SwiftUI, contains stuff related to user interfacing

struct ContentView: View { //This is a structure named ContentView which behaves like a View (i.e. inherits all the ability and responsibility of a View)
    var body: some View {
        //return ZStack(alignment: .center, content: {//allows you to list views which are lumped together, stacking them as layers in order they appear, can contain simple if-then statements
            
        return ZStack{ //same as above Zstack option, generally you don't include "content:{" or the parenthesis for asthetic reasons. It is assumed the last entry is the content so ZStack(alignment: .center, content:{...}) becomes ZStack(alignment: .center){...}
            RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 3)
                        .padding(.horizontal)
                        .foregroundColor(.red)
            
            Text("Hello, CS193p!") //Text is actually a function, you can do 'return Text(...)' and it will still work
                        .font(.headline) //specified font type
                        .padding() //padding seen around the text specified above
                    //.functions() return new Views and are called "view modifiers" so they need to be contained by some View. You can't do:
                    //var body:Text{
                    // return Text("...").padding()
                    // }
                    //
                    // Each new .viewmodifier() returns a modified version of the previous view so .first_modified().second_modified().third_modified()
        }//).padding()
        // can treat ZStack as a View, with view modifiers like .padding(), which pads the entire view. You can also have view modifiers like .foregroundColor(.red), which sets the default foreground color of  every view inside of the ZStack to red (you can still modify the colors of views inside of the ZStack to be different from the default)
        
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
