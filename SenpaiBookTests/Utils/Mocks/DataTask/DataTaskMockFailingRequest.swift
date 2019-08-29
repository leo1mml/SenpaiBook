//
//  DataTaskMockFailingRequest.swift
//  SenpaiBookTests
//
//  Created by leonel.menezes.lima on 29/08/19.
//  Copyright © 2019 Leonel Menezes. All rights reserved.
//
import Foundation
@testable
import SenpaiBook

class DataTaskMockFailingRequest: DataTask {
    func getData(from url: URL, _ handler: (Result<Data, Error>) -> Void) {
        let error = URLError(.badServerResponse)
        handler(.failure(error))
    }
}
