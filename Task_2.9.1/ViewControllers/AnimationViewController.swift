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
        animatedView.animate()
        
        setLabelsTitles()
        animationSettings = AnimationModel.setAnimationSettings()
        runButton.setTitle("\(animationSettings.preset)", for: .normal)
    }
    
}

private extension AnimationViewController {
    
    private func setLabelsTitles() {
        for index in 0..<settingsLabels.count {
            switch index {
                case 0: settingsLabels[index].text = "\(animationSettings.preset)"
                case 1: settingsLabels[index].text = "\(animationSettings.curve)"
                case 2: settingsLabels[index].text = "\(String(format: "%.2f", animationSettings.force))"
                case 3: settingsLabels[index].text = "\(String(format: "%.2f", animationSettings.duration))"
                default: settingsLabels[index].text = "\(String(format: "%.2f", animationSettings.delay))"
            }
        }
    }
    
}
