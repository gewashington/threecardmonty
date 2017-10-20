//
//  ViewController.swift
//  3CardMontyStart
//
//  Created by C4Q on 10/16/17.
//  Copyright © 2017 Glo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //look more into viewDidLoad
    //link losing card to either card randomize
    //USE FUNCTIONS, ENUMS AND ARRAYS!!!!
    var winningNumber = 2
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet var cardOne: UIButton!
    @IBOutlet var cardTwo: UIButton!
    @IBOutlet var cardThree: UIButton!
    @IBOutlet var userScore: UILabel!
    var currentScore = 0
//    var cards: [UIButton] = []
//    var cards = [cardOne, cardTwo, cardThree]
    
    
    
    
    @IBAction func colorChangeButtonPressed(_ sender: UIButton) {
        let newColor: UIColor
        if sender.tag == winningNumber {
            self.displayLabel.text = "You have won! \(winningNumber)"
            sender.setImage(#imageLiteral(resourceName: "panda-tarot-15008"), for: .normal)
            newColor = .green
            currentScore += 1
        }
            
        else {
            sender.setImage(#imageLiteral(resourceName: "aceofpandas"), for: .normal)
            self.displayLabel.text = "You have lost \(winningNumber)"
            newColor = .blue
            //Try to set delay to flip both losing cards
        }
        
        
        //        if sender.tag == winningNumber {
        //            self.displayLabel.text = "You have won! \(winningNumber)"
        //            sender.setImage(#imageLiteral(resourceName: "panda-tarot-15008"), for: .normal)
        //            currentScore += 1
        //        }
        //
        //        else {
        //            self.displayLabel.text = "You have lost \(winningNumber)"
        //
        //        }
        
//        switch sender.tag {
//
//        case 0:
//            newColor = .red
//
//        case 1:
//            newColor = .green
//            //          checkWinningCard(cardPicked: sender.tag, winningNumber: winningNumber)
//            //            if sender.tag == winningNumber {
//            //                cardTwo.setImage(#imageLiteral(resourceName: "panda-tarot-15008"), for: .normal)
//            //                break
//            //            }
//            //            cardTwo.setImage(#imageLiteral(resourceName: "Pomegranate"), for: .normal)
//            //            cardThree.setImage(#imageLiteral(resourceName: "panda-tarot-15008"), for: .normal)
//
//        case 2:
//            //            if sender.tag == winningNumber {
//            //                cardThree.setImage(#imageLiteral(resourceName: "panda-tarot-15008"), for: .normal)
//            //            }
//            newColor = .blue
//        default:
//            newColor = .gray
//
//
//        }
        cardOne.isUserInteractionEnabled = false
        cardTwo.isUserInteractionEnabled = false
        cardThree.isUserInteractionEnabled = false
        //turn into a function
        self.view.backgroundColor = newColor
        userScore.text = "Current Score = \(currentScore)"
        
        
    }
    
    //    func checkWinningCard(cardPicked: Int, winningNumber: Int) {
    //        switch cardPicked {
    //        case 0:
    //            if cardPicked == winningNumber {
    //
    //            }
    //        }
    //
    //
    //
    //    }
    
    @IBAction func newGamePressed(_ sender: UIButton) {
        cardOne.isUserInteractionEnabled = true
        cardTwo.isUserInteractionEnabled = true
        cardThree.isUserInteractionEnabled = true
        //change to function
        cardOne.setImage(#imageLiteral(resourceName: "pandacardback"), for: .normal)
        cardTwo.setImage(#imageLiteral(resourceName: "pandacardback"), for: .normal)
        cardThree.setImage(#imageLiteral(resourceName: "pandacardback"), for: .normal)
        self.displayLabel.text = "Pick a card."
        //change to function
        self.view.backgroundColor = .clear
        winningNumber = Int(arc4random_uniform(UInt32(3)))
        
        
    }
    
    
    
}


////
////  ViewController.swift
////  ThreeCardMonteV2
////
////  Created by C4Q  on 10/15/17.
////  Copyright © 2017 C4Q . All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//    enum WinningCard: Int {
//        case zero = 0
//        case one = 1
//        case two = 2
//        case three = 3
//        static func getRandomCard() -> WinningCard {
//            let newNum = Int(arc4random_uniform(4))
//            return WinningCard(rawValue: newNum)!
//        }
//    }
//
//    var winningCardNum: WinningCard? = nil
//    var cards: [UIButton] = []
//
//    @IBOutlet weak var cardZero: UIButton!
//    @IBOutlet weak var cardOne: UIButton!
//    @IBOutlet weak var cardTwo: UIButton!
//    @IBOutlet weak var cardThree: UIButton!
//    @IBOutlet weak var displayLabel: UILabel!
//
//    override func viewDidLoad() {
//This is saying, do whatever you need to do but then do my stuff!
//super.viewDidLoad()//
//setUpGame()
//        self.cards = [cardZero, cardOne, cardTwo, cardThree]
//        super.viewDidLoad()
//    }
//
//    @IBAction func newGameButtonPressed(_ sender: UIButton) {
//        setUpGame()
//    }
//
//    func setUpGame() {
//        self.winningCardNum = WinningCard.getRandomCard()
//        resetCards()
//        displayLabel.text = "Pick a card, any card!"
//    }
//
//    @IBAction func cardButtonPressed(_ sender: UIButton) {
//        setWinningCardImage()
//
//        if sender.tag == winningCardNum?.rawValue {
//            displayLabel.text = "You win!"
//        } else {
//            sender.setImage(#imageLiteral(resourceName: "threeCard"), for: .normal)
//            displayLabel.text = "You lose!"
//        }
//
//        disableCards()
//    }
//    /*
//     func pickWinningCard() {
//     let newNum = Int(arc4random_uniform(3))
//     //print("Trying to set to: \(newNum)")
//     winningCardNum = WinningCard(rawValue: newNum)
//     }
//     */
//    func resetCards() {
//        for card in cards {
//            card.setImage(#imageLiteral(resourceName: "cardBackRed"), for: .normal)
//            card.isEnabled = true
//        }
//    }
//
//    func setWinningCardImage() {
//        guard let winningCardNum = winningCardNum else {
//            return
//        }
//        switch winningCardNum {
//        case .zero:
//            cardZero.setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
//        case .one:
//            cardOne.setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
//        case .two:
//            cardTwo.setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
//        case .three:
//            cardThree.setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
//        }
//    }
//
//    func disableCards() {
//        for card in cards {
//            card.isEnabled = false
//        }
//    }
//}

