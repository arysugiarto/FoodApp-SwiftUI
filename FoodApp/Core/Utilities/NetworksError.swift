//
//  NetworkError.swift
//  FoodApp
//
//  Created by Ary Sugiarto on 13/12/23.
//

import Foundation
import Alamofire

struct NetworksError: Error {
  let initialError: AFError
  let backendError: BackendError?
}

struct BackendError: Codable, Error {
    var status: String
    var message: String
}

