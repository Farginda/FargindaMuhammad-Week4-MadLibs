//
//  WordsViewController.swift
//  Mad Libs
//
//  Created by Farginda on 11/19/18.
//  Copyright © 2018 Farginda. All rights reserved.
//

import UIKit

class WordsViewController: UIViewController {

    var story: Story!
    
    // labels in wordsviewcontroller
    @IBOutlet weak var wordCount: UILabel!
    @IBOutlet weak var wordSort: UILabel!
    
    // user input words
    @IBOutlet weak var wordInput: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        navigationItem.hidesBackButton = true
    }
    
    // update wordt type label
    func updateWordType() {
        if let nextPlaceholder = story?.nextPlaceholder {
            wordSort.text = "Please type a(n) \(nextPlaceholder)"
        }
    }
    
    // update wordcount label
    func updateWordCount() {
        if let placeHolderCount = story?.remainingPlaceholders {
            wordCount.text = String(placeHolderCount) + " word(s) left"
        }
    }
    
    
    func updateOkButton() {
        if let remaining = story?.remainingPlaceholders {
            if remaining > 0 {
                enterButton.setTitle("OK!", for: .normal)
            }
            else {
                enterButton.setTitle("See Story!", for: .normal)
            }
        }
    }
    
    // if user clicks on "OK!" button
    @IBAction func enterButtonPressed(_ sender: UIButton) {
        if wordInput.text != nil {
            story.fillInPlaceholder(word: wordInput.text!)
            updateWordCount()
            updateWordType()
            wordInput.text = ""
        }
        else {
            performSegue(withIdentifier: "StoryViewController", sender: nil)
                // go to next viewcontroller if end of placeholders
        }

    }
    
    // update all functions
    func updateUI() {
        updateWordType()
        updateWordCount()
        updateOkButton()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
