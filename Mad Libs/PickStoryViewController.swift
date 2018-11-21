//
//  PickStoryViewController.swift
//  Mad Libs
//
//  Created by Farginda on 11/19/18.
//  Copyright © 2018 Farginda. All rights reserved.
//

import UIKit

class PickStoryViewController: UIViewController {
    
    
    var story: Story!

    // story buttons
    @IBOutlet weak var simpleStoryButton: UIButton!
    @IBOutlet weak var tarzanStoryButton: UIButton!
    @IBOutlet weak var universityStoryButton: UIButton!
    @IBOutlet weak var clothesStoryButton: UIButton!
    @IBOutlet weak var danceStoryButton: UIButton!
    
    // different stories for different buttons
    @IBAction func storyButtonPressed(_ sender: UIButton) {
        switch sender {
        case simpleStoryButton:
            let storyPath = Bundle.main.path(forResource: "madlib0_simple", ofType: "txt")
            let text = try! String(contentsOfFile: storyPath!, encoding: .utf8)
            story = Story(withText: text)
        case tarzanStoryButton:
            let storyPath = Bundle.main.path(forResource: "madlib1_tarzan", ofType: "txt")
            let text = try! String(contentsOfFile: storyPath!, encoding: .utf8)
            story = Story(withText: text)
        case universityStoryButton:
            let storyPath = Bundle.main.path(forResource: "madlib2_university", ofType: "txt")
            let text = try! String(contentsOfFile: storyPath!, encoding: .utf8)
            story = Story(withText: text)
        case clothesStoryButton:
            let storyPath = Bundle.main.path(forResource: "madlib3_clothes", ofType: "txt")
            let text = try! String(contentsOfFile: storyPath!, encoding: .utf8)
            story = Story(withText: text)
        case danceStoryButton:
            let storyPath = Bundle.main.path(forResource: "madlib4_dance", ofType: "txt")
            let text = try! String(contentsOfFile: storyPath!, encoding: .utf8)
            story = Story(withText: text)
            
        default:
            break
        }
        
        // go to next view controller after button is oressed
        performSegue(withIdentifier: "WordsViewSegue", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // prepare for next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nav = segue.destination as? UINavigationController {
            if let destination = nav.topViewController as? WordsViewController {
            destination.story = story
            }
    
        }
    }


}
