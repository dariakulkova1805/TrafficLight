//
//  ViewController.swift
//  TrafficLight
//
//  Created by DARYA on 12/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var signalSwitchButton: UIButton!
    
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
    }
    
    @IBAction func signalSwitchButtonPressed() {
        if signalSwitchButton.currentTitle == "START" {
            signalSwitchButton.setTitle("NEXT", for: .normal)
        }
        
        if redLight.alpha == lightOn {
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
        } else if yellowLight.alpha == lightOn {
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
        } else if greenLight.alpha == lightOn {
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
        } else {
            redLight.alpha = lightOn
        }
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        signalSwitchButton.layer.cornerRadius = 10
    }
}





