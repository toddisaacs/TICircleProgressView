//
//  ViewController.swift
//  TICircleProgress
//
//  Created by Todd Isaacs on 4/21/16.
//  Copyright © 2016 Todd Isaacs. All rights reserved.
//

import UIKit
import TICircleProgress

class ViewController: UIViewController {

  @IBOutlet var circleProgressView: TICircleProgress!
  
  @IBOutlet var slider: UISlider!
  
  let manualProgressView = TICircleProgress(frame: CGRect(x: 20, y: 100, width: 100, height: 100))

  override func viewDidLoad() {
    super.viewDidLoad()
    slider.value = circleProgressView.progress
    
    manualProgressView.backgroundColor = UIColor.clear
    manualProgressView.progress = slider.value
    manualProgressView.trackColor = UIColor.orange
    manualProgressView.trackBackgroundColor = UIColor.brown
    manualProgressView.fontName = "BradleyHandITCTT-Bold"
    manualProgressView.label = "Tested"
    manualProgressView.trackWidth = 6
    manualProgressView.labelSize = 8
    manualProgressView.displaySize = 20
    
    view.addSubview(manualProgressView)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func slideChanged(_ sender: UISlider) {
    circleProgressView.progress = sender.value
    //manualProgressView.progress = sender.value
  }

}

