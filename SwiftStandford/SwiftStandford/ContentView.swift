//
//  ContentView.swift
//  Pomolife
//
//  Created by Ramón Núñez on 20/04/23.
//

import SwiftUI

struct ContentView: View {
    
    var flags: Array = ["🇩🇴", "🇲🇽", "🇹🇷", "🇵🇭", "🇵🇷", "🇧🇳", "🇧🇧", "🇨🇺", "🇺🇸", "🇻🇦", "🇧🇮", "🇰🇲", "🇰🇷", "🇨🇮", "🇰🇵",
    "🇬🇩", "🇸🇮", "🇱🇾", "🇪🇺"]
    
    @State var flagcount: Int = 4
    
    var body: some View {
        
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))] ) {
                    ForEach(flags[0..<flagcount], id: \.self, content: { flag in
                        recuadro(content: flag).aspectRatio(2/3, contentMode: .fit)
                    })
                }
            }
            Spacer();
            
            HStack {
                down
                Spacer()
                up
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }.padding(.horizontal)
    }
    
    struct recuadro: View {
        @State var isFaceUp: Bool = true // @State
        
        var content: String
        
        var body: some View {
            ZStack {
                if isFaceUp {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(red: 0.620, green: 0.220, blue: 0.220))
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1).foregroundColor(Color(red: 0.620, green: 0.220, blue: 0.220))
                    
                    Text(content).font(.largeTitle)
                }
            }.onTapGesture {
                isFaceUp = !isFaceUp
            }
        }
    }
    
    
    var up: some View {
        Button(action: {
            flagcount += 1
        }, label: {
            Image(systemName: "plus.circle")
        })
        
    }
    
    var down: some   View {
        Button(action: {
            flagcount -= 1
        }, label: {
            Image(systemName: "minus.circle")
            
        })
    }
    
    
    // Views can not be modified.
    //For temporrary states. Not used that much.
    
    
    
//    Struct and classes: both can hace var, computed variables, both can have let, both can have functions.
//    FUNCTIONS: arguments are labeled, we can have internal and external labels, both have init, implicictly function,
//    init initialize functions;
//    DIFFERENCES BETWEEN STRCUTC AND CLASS
//    Struct value clases, Classes are referece type, struct copies, class points, struct copy on write, classes reference counted, keep tracks of how many pointers are active, | Struct functional programing, Class: object oriented programming. Pointers makes things easier. Structs do not have inheritance, single inheritance for classes, structs init argument for everysingle variable, class init initializers no variables, Struct mutability has to be explicitly stated, var o array; let, structures are lets. Classes: Always mutable!!!!! - Functional programing is more probable, be careful in the class side, use classed in a understood way. | Structs are the go to of data structures, classes in specific circumstances - very strong need for sharing. View is a protocol!
//    UI KIT is based on classes |
//    We do not have variables that are untyped
//    When we do not care we use generics - Array example of do not care the type, how does the array implement itseft to be generic?
//    Element is a generic type that do no care -
//    Functions are types too, passing fuctions to variables, passing functions to other functions, variables can ve functions 
    
    

    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}

