//
//  BullsEyeUITests.swift
//  BullsEyeUITests
//
//  Created by Ievgen Rybalko on 18.09.2022.
//

import XCTest
@testable import BullsEyeUI

class BullsEyeUITests: XCTestCase {
    var game: Game!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }

    func testScorePositive() throws {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 85)
    }

    func testScoreNegative() throws {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 85)
    }

}
