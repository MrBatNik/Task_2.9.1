//
//  ViewController.swift
//  Task_2.9.1
//
//  Created by Никита Бат on 24.11.2021.
//

import Spring

final class AnimationViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var runButton: UIButton!
    @IBOutlet var settingsLabels: [UILabel]!
    
    var animationSettings = AnimationModel.setAnimationSettings()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabelsTitles()
    }
    
    @IBAction func tapRunButton() {
        animatedView.animation = "\(animationSettings.preset)"
        animatedView.curve = "\(animationSettings.curve)"
        animatedView.force = animationSettings.force
        animatedView.duration = animationSettings.duration
        animatedView.delay = animationSettings.delay
        animatedView.animate()
        
        setLabelsTitles()
        animationSettings = AnimationModel.setAnimationSettings()
        runButton.setTitle("Run: \(animationSettings.preset)", for: .normal)
    }
    
}

private extension AnimationViewController {
    
    private func setLabelsTitles() {
        for index in 0..<settingsLabels.count {
            switch index {
                case 0: settingsLabels[index].text = "Preset: \(animationSettings.preset)"
                case 1: settingsLabels[index].text = "Curve: \(animationSettings.curve)"
                case 2: settingsLabels[index].text = "Force: \(String(format: "%.2f", animationSettings.force))"
                case 3: settingsLabels[index].text = "Duration: \(String(format: "%.2f", animationSettings.duration))"
                default: settingsLabels[index].text = "Delay: \(String(format: "%.2f", animationSettings.delay))"
            }
        }
    }
    
}
