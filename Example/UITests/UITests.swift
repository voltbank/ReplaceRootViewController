//
//  UITests.swift
//  UITests
//
//  Created by Sushant Verma on 7/3/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest

class UITests: XCTestCase {

    class RedScreen {
        let app:XCUIApplication!

        init(_ app:XCUIApplication) {
            self.app = app
        }

        lazy var screen = app.otherElements.containing(.navigationBar, identifier:"ReplaceRootViewController")
        lazy var navBar:XCUIElement = screen.navigationBars.element

        lazy var present:XCUIElement = screen.buttons["Present!"]
    }
    class GreenScreen {
        let app:XCUIApplication!

        init(_ app:XCUIApplication) {
            self.app = app
        }

        lazy var screen = app.otherElements.containing(.navigationBar, identifier:"Presented")
        lazy var navBar:XCUIElement = screen.navigationBars.element

        lazy var replace:XCUIElement = screen.buttons["Replace root"]
    }
    class BlueScreen {
        let app:XCUIApplication!

        init(_ app:XCUIApplication) {
            self.app = app
        }

        lazy var screen = app.otherElements.containing(.navigationBar, identifier:"Replaced Root")
        lazy var navBar:XCUIElement = screen.navigationBars.element
    }

    var app:XCUIApplication!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    func testAutomation() {
        let rScreen = RedScreen(app)
        let gScreen = GreenScreen(app)
        let bScreen = BlueScreen(app)

        XCTAssertTrue(rScreen.navBar.exists)
        rScreen.present.tap()

        sleep(1)//ugggh
        XCTAssertFalse(rScreen.navBar.exists)
        XCTAssertTrue(gScreen.navBar.exists)
        gScreen.replace.tap()

        sleep(1)//ugggh
        XCTAssertFalse(rScreen.navBar.exists)
        XCTAssertFalse(gScreen.navBar.exists)
        XCTAssertTrue(bScreen.navBar.exists)

    }

}
