//
//  DataTaskMockError.swift
//  SenpaiBookTests
//
//  Created by leonel.menezes.lima on 29/08/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//
import Foundation
import Quick
import Nimble
@testable
import SenpaiBook

class DataTaskMockError: DataTask {
    func getData(from url: URL, _ handler: (Result<Data, Error>) -> Void) {
        let data = "oaisdjfoaisjdf".data(using: .utf8)
        handler(.success(data!))
    }
}
