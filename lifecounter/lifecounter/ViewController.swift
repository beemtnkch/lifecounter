//
//  ViewController.swift
//  lifecounter
//
//  Created by Beem on 4/26/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var player1LifeLabel: UILabel!
    @IBOutlet weak var player2LifeLabel: UILabel!
    @IBOutlet weak var loseMessage: UILabel!
    
    var playerOneLives = 20
    var playerTwoLives = 20
    
    func updateLivesDisplay() {
            player1LifeLabel.text = "Lives: \(playerOneLives)"
            player2LifeLabel.text = "Lives: \(playerTwoLives)"
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loseMessage.text = ""
    }
    
    func checkForLoser() {
            if playerOneLives <= 0 {
                loseMessage.text = "Player 1 LOSES!"
            } else if playerTwoLives <= 0 {
                loseMessage.text = "Player 2 LOSES!"
            } else{
                loseMessage.text = " "
            }
            
        }
    @IBAction func player1Add1(_ sender: UIButton) {
        playerOneLives += 1
        updateLivesDisplay()
        checkForLoser()
    }
    @IBAction func player1Minus1(_ sender: UIButton) {
        playerOneLives -= 1
        updateLivesDisplay()
        checkForLoser()
    }
    @IBAction func player1Add5(_ sender: UIButton) {
        playerOneLives += 5
        updateLivesDisplay()
        checkForLoser()
    }
    @IBAction func player1Minus5(_ sender: UIButton) {
        playerOneLives -= 5
        updateLivesDisplay()
        checkForLoser()
    }
    
    @IBAction func player2Add1(_ sender: UIButton) {
        playerTwoLives += 1
        updateLivesDisplay()
        checkForLoser()
    }
    @IBAction func player2Minus1(_ sender: UIButton) {
        playerTwoLives -= 1
        updateLivesDisplay()
        checkForLoser()
    }
    @IBAction func player2Add5(_ sender: UIButton) {
        playerTwoLives += 5
        updateLivesDisplay()
        checkForLoser()
    }
    @IBAction func player2Minus5(_ sender: UIButton) {
        playerTwoLives -= 5
        updateLivesDisplay()
        checkForLoser()
    }
    
    
    
    
    


}

