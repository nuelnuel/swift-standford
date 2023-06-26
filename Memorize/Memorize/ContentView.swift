//
//  ContentView.swift
//  Memorize
//
//  Created by Ramón Núñez on 25/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}


struct CardView: View {
    var isFaceUp: Bool = true
    
    var body: some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("🚗")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(.red)
                
            }
        }

    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
