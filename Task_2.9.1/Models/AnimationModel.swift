//
//  AnimationModel.swift
//  Task_2.9.1
//
//  Created by Никита Бат on 24.11.2021.
//

import Spring

struct AnimationModel {
    
    let preset: Spring.AnimationPreset
    let curve: Spring.AnimationCurve
    let force: Double
    let duration: Double
    let delay: Double
    
}

extension AnimationModel {
    
    static func setAnimationSettings() -> AnimationModel {
        AnimationModel(preset: Spring.AnimationPreset.allCases.randomElement() ?? .zoomOut,
                       curve: Spring.AnimationCurve.allCases.randomElement() ?? .easeIn,
                       force: Double.random(in: 1.0...2.0),
                       duration: Double.random(in: 1.0...2.0),
                       delay: Double.random(in: 0.0...1.0))
    }
    
}
