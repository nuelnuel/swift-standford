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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}

