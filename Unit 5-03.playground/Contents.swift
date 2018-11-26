// Created on: Oct-2018
// Created by: Ethan Bellem
// Created for: ICS3U
// This program will find the biggest number
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionLabel = UILabel()
    let enterB = UIButton()
    let answerL = UILabel()
    let answerL2 = UILabel()
    let numbers = [Int(arc4random_uniform(10000) + 1), Int(arc4random_uniform(10000) + 1), Int(arc4random_uniform(10000) + 1)]
    
    @objc func showBiggest() {
        // print highest number
        answerL2.text = "The lowest number is: \(findBiggest(numbers: numbers))"
    }
    
    @objc func findBiggest(numbers: [Int]) -> Int {
        //show total volume to the user
        var smallestNumber = numbers[0]
        for aValueInArray in numbers{
            if smallestNumber > aValueInArray {
                smallestNumber = aValueInArray
        }
        }
        return smallestNumber
    }
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter radius and height in cm to calculate volume:"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        enterB.setTitle("Enter", for: .normal)
        enterB.setTitleColor(.blue, for: .normal)
        enterB.titleLabel?.textAlignment = .center
        enterB.addTarget(self, action: #selector(showBiggest), for: .touchUpInside)
        view.addSubview(enterB)
        enterB.translatesAutoresizingMaskIntoConstraints = false
        enterB.topAnchor.constraint(equalTo: instructionLabel.topAnchor, constant: 60).isActive = true
        enterB.leadingAnchor.constraint(equalTo: instructionLabel.trailingAnchor, constant: 20).isActive = true
        
        answerL.text = "the numbers are \(numbers)"
        view.addSubview(answerL)
        answerL.translatesAutoresizingMaskIntoConstraints = false
        answerL.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        answerL.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerL2.text = ""
        view.addSubview(answerL2)
        answerL2.translatesAutoresizingMaskIntoConstraints = false
        answerL2.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 60).isActive = true
        answerL2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
