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
    
    // update OK button and go to next view controller
    func updateOkButton() {
        if story!.remainingPlaceholders > 0 {
            enterButton.setTitle("OK!", for: .normal)
        }
        else if story.remainingPlaceholders == 0 {
            enterButton.setTitle("Story!", for: .normal)
            performSegue(withIdentifier: "StoryViewSegue", sender: nil)
        }
    }
    
    // if user clicks on "OK!" button
    @IBAction func enterButtonPressed(_ sender: UIButton) {
        if wordInput.text != nil {
            story.fillInPlaceholder(word: wordInput.text!)
            updateWordCount()
            updateWordType()
            updateOkButton()
            wordInput.text = ""
        }
        else {
            performSegue(withIdentifier: "StoryViewSegue", sender: nil)
        }
    }
    
    // update all functions
    func updateUI() {
        updateWordType()
        updateWordCount()
        updateOkButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "StoryViewSegue" {
            let destination = segue.destination as! StoryViewController
            destination.story = story
        }
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
