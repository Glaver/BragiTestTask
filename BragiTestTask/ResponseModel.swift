//
//  ResponseModel.swift
//  BragiTestTask
//
//  Created by Vladyslav on 16/4/21.
//

import Foundation

let responseArraySize = 50

enum ResponseState: String {
    case unknown
    case connectionError = "connection error"
    case connecting
    case connectionEstablished = "connection established"
}

struct ResponseModel {
    static func responseArray() -> [ResponseState] {
        let arr = (1...responseArraySize).map { _ in Int.random(in: 0...3) }
        var arrayResponseState = [ResponseState.unknown]
        for index in arr {
            switch index {
            case 0: arrayResponseState.append(ResponseState.unknown)
            case 1: arrayResponseState.append(ResponseState.connectionError)
            case 2: arrayResponseState.append(ResponseState.connecting)
            case 3: arrayResponseState.append(ResponseState.connectionEstablished)
            default: break
            }
        }
        return arrayResponseState
    }
}
