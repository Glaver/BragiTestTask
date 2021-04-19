//
//  ViewController.swift
//  BragiTestTask
//
//  Created by Vladyslav on 16/4/21.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var responseLable: UILabel!
    @IBAction func responseButton(_ sender: Any) {
        let alert = UIAlertController(title: "Alert", message: "The message is sent", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        if responseLable.text == "connection established" {
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    let responseViewModel = ResponseViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = responseViewModel.sequence.subscribe { event in
            self.responseLable.text = event.rawValue
        }
    }
}

