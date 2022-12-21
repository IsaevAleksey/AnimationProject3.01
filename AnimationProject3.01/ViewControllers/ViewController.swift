//
//  ViewController.swift
//  AnimationProject3.01
//
//  Created by Алексей Исаев on 20.12.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presedLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presedLabel.text = "Preset: \(animation.preset)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.02f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.02f", animation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.02f", animation.delay))"
    }

    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        
        sender.setTitle("Start \(animation.preset)", for: .normal)
        updateAnimation()
    }
    
    private func updateAnimation() {
        presedLabel.text = "Preset: \(animation.preset)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.02f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.02f", animation.duration))"
        delayLabel.text = "Delay: \(String(format: "%.02f", animation.delay))"
    }
}

