//
//  ViewControllerStepTwo.swift
//  BragiTestTask
//
//  Created by Vladyslav on 19/4/21.
//

import UIKit
import RxSwift

class SequenceViewController: UIViewController {
    @IBOutlet weak var simulateButtonOutlet: UIButton!
    @IBAction func simulateButton(_ sender: UIButton) {
        createSequence(for: createArray())
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        makeRoundedButton()
    }

    func createArray() -> [Int] {
        return Array(1...50)
    }
    func createSequence(for array: [Int]) {
        let publishSubject = PublishSubject<Int>()
        var delay = 0
        publishSubject
            .flatMap { n -> Observable<Int> in
                delay += n
                return Observable.just(n)
                    .delaySubscription(.seconds(delay), scheduler: MainScheduler.instance)
            }
            .subscribe(onNext: { (i) in
                NSLog("i \(i)")
            })
            array.forEach({ (int) in
                publishSubject.onNext(int)
            })
    }
    func makeRoundedButton() {
        simulateButtonOutlet.layer.cornerRadius = 10
        simulateButtonOutlet.clipsToBounds = true
    }
}
