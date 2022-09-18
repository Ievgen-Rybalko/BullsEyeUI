//
//  Game.swift
//  BullsEyeUI
//
//  Created by Ievgen Rybalko on 18.09.2022.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var totalScore: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        let points = target - sliderValue
        guard (points > 0) else { return 100 + (3 * points) }
        return 100 - (3 * points)
    }
}
