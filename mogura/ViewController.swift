//
//  ViewController.swift
//  mogura
//
//  Created by IkegamiYuki on 10/31/15.
//  Copyright © 2015 IkegamiYuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mogura: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var oteBtn: UIButton!
    var scoreNum:Int!
    var placeNum:UInt32!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreNum = 0

        scoreLabel.text = "Score:\(scoreNum)"
        scoreLabel.textAlignment = NSTextAlignment.Center
        scoreLabel.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: 100)
        
        mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: 300)
        
        oteBtn.frame = CGRectMake(0, UIScreen.mainScreen().bounds.height / 3, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height)
        
        let timer:NSTimer = NSTimer.scheduledTimerWithTimeInterval(1/2, target: self, selector: "moguraPlace", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func moguraPlace(){
        placeNum = arc4random() % 9
        
        switch placeNum{
        case 0:
            mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2 - 100, y: UIScreen.mainScreen().bounds.height * 2 / 3 - 100)
            break
        case 1:
            mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: UIScreen.mainScreen().bounds.height * 2 / 3 - 100)
            break
        case 2:
            mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2 + 100, y: UIScreen.mainScreen().bounds.height * 2 / 3 - 100)
            break
        case 3:
            mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2 - 100, y: UIScreen.mainScreen().bounds.height * 2 / 3)
            break
        case 4:
            mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: UIScreen.mainScreen().bounds.height * 2 / 3)
            break
        case 5:
            mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2 + 100, y: UIScreen.mainScreen().bounds.height * 2 / 3)
            break
        case 6:
            mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2 - 100, y: UIScreen.mainScreen().bounds.height * 2 / 3 + 100)
            break
        case 7:
            mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: UIScreen.mainScreen().bounds.height * 2 / 3 + 100)
            break
        case 8:
            mogura.center = CGPoint(x: UIScreen.mainScreen().bounds.width / 2 + 100, y: UIScreen.mainScreen().bounds.height * 2 / 3 + 100)
            break
        default:
            print("get random number error!")
            break
        }
    }
    
    @IBAction func otetsuki(sender: AnyObject) {
        scoreNum = scoreNum - 1
        
        scoreLabel.text = "Score:\(scoreNum)"
    }
    
    @IBAction func btnAct(sender: AnyObject) {
        scoreNum = scoreNum + 1
        
        scoreLabel.text = "Score:\(scoreNum)"
        
        moguraPlace()
    }

}

