//
//  ViewController.swift
//  StopWatch
//
//  Created by Kevin Le on 10/17/16.
//  Copyright © 2016 Kevinvle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var timerLabel: UILabel!
    
    var timer = Timer() // it's in global scope so pause and reset can interact with play too
    var time = 0
    
    func increaseTimer() {
        
        time += 1
        
        timerLabel.text = "\(time) sec"
        
    }
    
    @IBAction func play(_ sender: AnyObject) {
        
        timer  = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
        
       // timerLabel.isEnabled = false
        
    }
    

    @IBAction func pause(_ sender: AnyObject) {
        
        timer.invalidate()
   
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

