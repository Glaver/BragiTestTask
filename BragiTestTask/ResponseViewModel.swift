//
//  ResponseViewModel.swift
//  BragiTestTask
//
//  Created by Vladyslav on 16/4/21.
//

import Foundation
import RxSwift

protocol SequenceViewModelProtocol {
    var sequence: Observable<ResponseState> { get }
}

class ResponseViewModel: SequenceViewModelProtocol {
    var sequence = Observable.from(ResponseModel.responseArray())
        .distinctUntilChanged()
        .concatMap { Observable.empty()
            .delay(.seconds(5), scheduler: MainScheduler.instance).startWith($0) }
}
