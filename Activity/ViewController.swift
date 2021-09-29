//
//  ViewController.swift
//  Activity
//
//  Created by Danny on 9/29/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var randomLabel: UILabel!
    
    var data = ["1","2","3","4","5"]
    var position = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func onNextClicked(_ sender: UIButton) {
        if position != data.count - 1 { // if current index position of data does not equal to the size of data
            position += 1 // add position of index by 1
        } else {
            position = 0 // reset data index position to 0 because it reached the end of the array size
        }
        updateUI() // calls updateUI function
    }
    
    @IBAction func onPreviousClicked(_ sender: UIButton) {
        if position == 0 { // if current index position of data reaches below 0
            position = data.count-1 // reset index position to be the end of the array
        } else {
            position -= 1 // decrease position of index by 1
        }
        updateUI() // calls updateUI function
    }
    
    // This is a function that just update the UI. In this case it updates the number label text
    func updateUI() {
        numberLabel.text = data[position]
        
    }
}

