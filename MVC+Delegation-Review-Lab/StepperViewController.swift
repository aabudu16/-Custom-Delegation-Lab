//
//  StepperViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Mr Wonderful on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController {
    var sliderValueHolder = Float()
  
    
   // var oldValue: Float?
var delegate:fontSizer?
    var currentValue: Float!
    
    @IBOutlet var fontSizerStepperOutlet: UIStepper!
    @IBOutlet var fontSizerSliderOutlet: UISlider!
    @IBOutlet var previousFontSize: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
fontSizerSliderOutlet.value = currentValue ?? 20
        fontSizerStepperOutlet.value = Double(currentValue ?? 20)
    previousFontSize.text = "Previous Font Size: \(String(describing: currentValue ?? 20))"
    }
    
    @IBAction func fontSizerSlider(_ sender: UISlider) {
        if delegate != nil{
          sliderValueHolder = sender.value
            delegate?.changeFontSize(size: sliderValueHolder)
            
            previousFontSize.text = "Current Font Size: \(sender.value)"
            fontSizerStepperOutlet.value = Double(sender.value)
        }
        
    }
    @IBAction func fontSizerStepper(_ sender: UIStepper) {
        sliderValueHolder = Float(sender.value)
        delegate?.changeFontSize(size: sliderValueHolder)
        fontSizerSliderOutlet.value = Float(sender.value)
        fontSizerStepperOutlet.value = Double(fontSizerSliderOutlet.value)
        previousFontSize.text = "Current Font Size: \(sender.value)"
    }
}
