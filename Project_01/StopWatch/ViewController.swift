//
//  ViewController.swift
//  StopWatch
//
//  Created by 陈栋楠 on 2016/11/13.
//  Copyright © 2016年 陈栋楠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var counter = 0.0
    var timer = Foundation.Timer()
    var isPlaying = false
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func resetButtonTouchAction(_ sender: Any) {
        timer.invalidate()
        isPlaying = false
        counter = 0
        timeLabel.text = String(counter)
        playButton.isEnabled = true
        pauseButton.isEnabled = true
    }
    
    
 
    @IBAction func playButtonDidTouch(_ sender: AnyObject) {
        if (isPlaying) {
            return
        }
        playButton.isEnabled = false
        pauseButton.isEnabled = true
        timer = Foundation.Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    @IBAction func pauseButtonDidTouch(_ sender: Any) {
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        timer.invalidate()
        isPlaying = false
    }
    
    func UpdateTimer () {
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }
    
    override func viewDidLoad() {
        timeLabel.text = String(counter)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

