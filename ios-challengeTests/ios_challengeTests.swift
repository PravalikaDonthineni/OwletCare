//
//  ios_challengeTests.swift
//  ios-challengeTests
//
//  Created by Lorraine Alexander on 4/15/19.
//  Copyright © 2019 Owlet Baby Care Inc. All rights reserved.
//

import XCTest
@testable import ios_challenge

class ios_challengeTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIncreaseAction() {
        let state = AppState.init(counter: 0)
        let value = appReducer(IncreaseAction.init(increaseBy: 1), state)
        let counter = (value as? AppState)?.counter
        let count = (store.state as? AppState)?.counter ?? 1
        XCTAssertEqual(counter, count)
    }
    
    func testDecreaseAction() {
        let state = AppState.init(counter: 0)
        let value = appReducer(DecreaseAction.init(decreaseBy: 1), state)
        let counter = (value as? AppState)?.counter
        let count = (store.state as? AppState)?.counter ?? -1
        XCTAssertEqual(counter, count)
    }
}
