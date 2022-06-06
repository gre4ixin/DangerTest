//
//  ContentView.swift
//  DangerTest
//
//  Created by Pavel Grechikhin on 06.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        Text(text)
            .padding()
            .onAppear {
                text = "TEST APPEAR"
            }
    }
}

//Comment

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
