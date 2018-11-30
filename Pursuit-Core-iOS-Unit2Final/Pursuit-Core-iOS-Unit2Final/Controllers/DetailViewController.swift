//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Oniel Rosario on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var myView: UIView!
    
var color: Crayon!
    @IBOutlet weak var colorName: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redSliderValue: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenSliderValue: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueSliderValue: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaStepperValue: UILabel!
    
  
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     self.myView.backgroundColor = UIColor.init(displayP3Red: CGFloat(color.red) / 255, green: CGFloat(color.green) / 255, blue: CGFloat(color.blue) / 255, alpha: 1)
        //labels
        colorName.text = color.name
        redSliderValue.text = "\(color.red)"
        greenSliderValue.text = "\(color.green)"
        blueSliderValue.text = "\(color.blue)"
        alphaStepperValue.text = "\(alphaStepper.value)"
        
        
        
        //sliders
        redSlider.maximumValue = 1
        redSlider.minimumValue = 0
        redSlider.value = Float(color.red)
        
        greenSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.value = Float(color.green)
        
        blueSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        blueSlider.value = Float(color.blue)
        
        //stepper
        alphaStepper.maximumValue = 1
        alphaStepper.minimumValue = 0
        alphaStepper.value = 1
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        switch sender {
        case redSlider:
            redSliderValue.text = Float(sender.value).description
            self.myView.backgroundColor = UIColor.init(displayP3Red: CGFloat(sender.value / 255), green: CGFloat(color.green) / 255, blue: CGFloat(color.blue) / 255, alpha: 1)
        case greenSlider:
            self.myView.backgroundColor = UIColor.init(displayP3Red: CGFloat(color.red) / 255, green: CGFloat(sender.value) / 255, blue: CGFloat(color.blue) / 255, alpha: 1)
            greenSliderValue.text = Float(sender.value).description
        case blueSlider:
            self.myView.backgroundColor = UIColor.init(displayP3Red: CGFloat(color.red) / 255, green: CGFloat(color.green) / 255, blue: CGFloat(sender.value) / 255, alpha: 1)
            blueSliderValue.text = Float(sender.value).description
        default:
            break
        }
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
    alphaStepperValue.text = Double(sender.value).description
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
     self.myView.backgroundColor = UIColor.init(displayP3Red: CGFloat(color.red) / 255, green: CGFloat(color.green) / 255, blue: CGFloat(color.blue) / 255, alpha: 1)
        
        colorName.text = color.name
        redSliderValue.text = "\(color.red)"
        greenSliderValue.text = "\(color.green)"
        blueSliderValue.text = "\(color.blue)"
        alphaStepperValue.text = "\(alphaStepper.value)"
        
        redSlider.maximumValue = 1
        redSlider.minimumValue = 0
        redSlider.value = Float(color.red)
        
        greenSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.value = Float(color.green)
        
        blueSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        blueSlider.value = Float(color.blue)
        
        
        alphaStepper.maximumValue = 1
        alphaStepper.minimumValue = 0
        alphaStepper.value = 1
    
    
    }
    
    
    
}
