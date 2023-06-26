//
//  ContentView.swift
//  Memorize
//
//  Created by Ramón Núñez on 25/06/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("We are going to do this!")
            HStack{
                Text("Get me")
                Text("Ingresa tu nombre")
            }
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
