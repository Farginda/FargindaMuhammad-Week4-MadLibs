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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        madlibStory.text = story.normalText

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


