//
//  Fastlane_RubyUITests.swift
//  Fastlane-RubyUITests
//
//  Created by Ruslan Filistovich on 30/12/2019.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import XCTest

class Fastlane_RubyUITests: XCTestCase {

    override func setUp() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        snapshot("0Launch")
        
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
