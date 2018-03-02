//
//  ATThrowableOptionals_DemoTests.swift
//  ATThrowableOptionals_DemoTests
//
//  Created by Dejan on 28/02/2018.
//  Copyright © 2018 Dejan. All rights reserved.
//

import XCTest
@testable import ATThrowableOptionals_Demo

class ATThrowableOptionals_DemoTests: XCTestCase
{
    func testThrowableOptional() throws {
        var nilledValue: Int! = 42
        nilledValue = nil
        
        XCTAssertEqual(try nilledValue+!.description, 42.description)
    }
    
//    func testForceUnwrapping() {
//        var nilledValue: Int!
//
//        XCTAssertEqual(nilledValue.description, 42.description)
//    }
}
