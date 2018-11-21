//
//  StoryViewController.swift
//  Mad Libs
//
//  Created by Farginda on 11/19/18.
//  Copyright © 2018 Farginda. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    
    var story = Story(withText: String())
    
    @IBOutlet weak var finalStory: UILabel!
    @IBOutlet weak var newStoryButton: UIButton!
    @IBOutlet weak var madlibStory: UITextView!
    
    // create story with user inputted words
    override func viewDidLoad() {
        super.viewDidLoad()
        madlibStory.text = story.normalText

        }
    }


