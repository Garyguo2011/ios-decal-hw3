//
//  ViewController.swift
//  Hangman
//
//  Created by Gene Yoo on 10/13/15.
//  Copyright © 2015 cs198-ios. All rights reserved.
//

import UIKit

class HangmanViewController: UIViewController {

    @IBOutlet weak var guessTextField: UITextField!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var currentGuess: UILabel!
    @IBOutlet weak var hangmanImage: UIImageView!
    @IBOutlet weak var newGameButton: UIBarButtonItem!
    
    var hangman = Hangman()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newGame()
        newGameButton.action = "newGame"
    }
    
    func newGame(){
        hangman.start()
        currentGuess.text=""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func makeAGuess(sender: UIButton) {
        hangman.guessLetter(guessTextField.text!)
        self.view.endEditing(true)
        guessTextField.text = ""
        currentGuess.text = hangman.guesses()
    }
}

