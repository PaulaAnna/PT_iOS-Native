//
//  SlideInTransitionForPaula_EngelbUITests.swift
//  SlideInTransitionForPaula_EngelbUITests
//
//  Created by Paula Engelberg on 2020/07/07.
//  Copyright © 2020 Gary Tokman. All rights reserved.
//

import XCTest

class iOSnativeUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOpenCloseDrawer() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
                      
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
      //  let nrSwipes = 8
        
        measure(metrics: [XCTClockMetric(), // to measure time
                                  XCTCPUMetric(), // to measure cpu cycles
                                  XCTStorageMetric(), // to measure storage consuming
                                  XCTMemoryMetric()]) { // to measeure RAM consuming
        
          //  for runde in 0 ..< nrSwipes {
                
                app.swipeRight()
                sleep(4)
                app.tap()
                sleep(4)
                //print("Runde: \(runde)")
           // }
        }
    }
    
    func testSwitchPages() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.navigationBars["Hier dein Title"].buttons["pencil"].tap()
        
        let nrSwitches = 1
        
        measure(metrics: [XCTClockMetric(), // to measure time
                                  XCTCPUMetric(), // to measure cpu cycles
                                  XCTStorageMetric(), // to measure storage consuming
                                  XCTMemoryMetric()]) { // to measeure RAM consuming
        
       for runde in 0 ..< nrSwitches {
        print("-----------------------------Runde: \(runde)----------------------------------")
            print("Sleep: 5 Sekunden bevor tap NEXT")
            sleep(5)
            app.buttons["next"].tap()
            print("Sleep: 5 Sekunden bevor tap PREVIOUS")
            sleep(5)
            app.buttons["previous"].tap()
            
            
            }
        }
    }
    
    func testSwipeList() throws{
        let app = XCUIApplication()
        app.launch()
        
        app.navigationBars["Hier dein Title"].buttons["pencil"].tap()
        app.navigationBars.buttons["pencil"].tap()
        print("Sleep: 5 Sekunden")
        sleep(5)

        let nrSwipes = 6
         

        for runde in 1 ..< nrSwipes {
            print("--------------------------Runde: \(runde)---------------------------------")
            app.swipeUp()
            sleep(3)
            print("Schlafe nach einem Swipe 3 Sekunden")
            
                                    }
         }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTClockMetric(), // to measure time
                                      XCTCPUMetric(), // to measure cpu cycles
                                      XCTStorageMetric(), // to measure storage consuming
                                      XCTMemoryMetric()]) { // to measeure RAM consuming
                XCUIApplication().launch()
            }
        }
    }
}
