//
//  StartScreen.swift
//  Jetpack Fury
//
//  Created by Bennett Stern on 4/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Start Game!")
            .padding()
            .background(
                Image("Military Background")
                    .resizable()
                    .scaledToFill()
            ) // Set background image
    }
}



import UIKit

class TitleScreenViewController: UIViewController {

    // Connect this method to a button in Interface Builder to handle button tap
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // Perform any necessary actions, such as navigating to the main content of your app
        // Example: performSegue(withIdentifier: "segueToMainContent", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Any additional setup after loading the view
    }
}
