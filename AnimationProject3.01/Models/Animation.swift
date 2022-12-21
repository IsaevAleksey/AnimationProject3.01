//
//  Animation.swift
//  AnimationProject3.01
//
//  Created by Алексей Исаев on 21.12.2022.
//

import SpringAnimation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "pop",
            curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0...1),
            duration: Double.random(in: 0.5...1.5),
            delay: Double.random(in: 0...1)
        )
    }
}
