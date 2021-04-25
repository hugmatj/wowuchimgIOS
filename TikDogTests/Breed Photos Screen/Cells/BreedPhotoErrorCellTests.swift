//
//  BreedPhotoErrorCellTests.swift
//  TikDogTests
//
//  Created by Anastasia Petrova on 25/04/2021.
//

@testable import TikDog
import XCTest

final class BreedPhotoErrorCellTests: XCTestCase {
    func test_retryButton_action() {
        let cell = BreedPhotoErrorCell()
        var counter = 0
        cell.didTapRetryButton = {
            counter += 1
        }
        
        cell.errorView.retryButton.sendActions(for: .touchUpInside)
        
        XCTAssertEqual(counter, 1)
    }
    
    func test_setMessage() {
        let cell = BreedPhotoErrorCell()
        XCTAssertNil(cell.errorView.title.text, "precondition")
        cell.setMessage("Bad Bad Error")
        
        XCTAssertEqual(cell.errorView.title.text, "Bad Bad Error")
    }
}
