//
//  P10_Pull_to_Refresh_Table_ViewUITestsLaunchTests.swift
//  P10 Pull to Refresh Table ViewUITests
//
//  Created by Oğulcan Baytimur on 01/11/2023.
//

import XCTest

final class P10_Pull_to_Refresh_Table_ViewUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
