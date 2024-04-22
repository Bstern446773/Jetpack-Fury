//
//  StartScreen.swift
//  Jetpack Fury
//
//  Created by Bennett Stern on 4/23/24.
//


import SwiftUI

struct TitleScreen: View {
    @State private var showingHowToPlay = false
    
    var body: some View {
        VStack {
            Text("Jetpack Fury")
                .font(.title)
                .padding()
            
            Image("Military Background")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 700, height: 600)
                .padding()
            
            Button("Start") {
                // Action to proceed to the next screen
            }
            .padding()
            
            Button("How to Play") {
                showingHowToPlay.toggle()
            }
            .padding()
        }
        .sheet(isPresented: $showingHowToPlay) {
            HowToPlayScreen()
        }
    }
}

struct HowToPlayScreen: View {
    var body: some View {
        VStack {
            Text("to play jetpack fury you have to be a jetpack and move around. You move up and down. You also move left and right. Next, you need to dodge military crates that are falling above the screen and not get hit by them. if u get him one time you will die an d you have to start over ")
                .font(.title)
                .padding()
            
            // Add instructions on how to play here
            
            Button("Close") {
                // Action to close the How to Play screen
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TitleScreen()
    }
}
