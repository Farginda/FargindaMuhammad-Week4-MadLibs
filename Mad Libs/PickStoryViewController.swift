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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nav = segue.destination as? UINavigationController {
            if let destination = nav.topViewController {
            // segue.destination.story = story
            }
    
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
