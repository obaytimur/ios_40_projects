//
//  P9_Add_Photo_from_CameraUITestsLaunchTests.swift
//  P9 Add Photo from CameraUITests
//
//  Created by Oğulcan Baytimur on 31/10/2023.
//

import XCTest

final class P9_Add_Photo_from_CameraUITestsLaunchTests: XCTestCase {

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
