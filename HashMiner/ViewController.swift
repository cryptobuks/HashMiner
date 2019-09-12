//
//  ViewController.swift
//  HashMiner
//
//  Created by Jerry on 9/11/19.
//  Copyright © 2019 SoftChain Foundation Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var targetStr = "Hello, Swift"
    var hashResult: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func prograssHash() {
        let start_time = Date().timeIntervalSince1970
        for _ in 1...50000 {
            hashResult = targetStr.sha256()
        }
        let used_time = Date().timeIntervalSince1970 - start_time
        print(50000/used_time)
    }

    @IBAction func startBtnPressed(_ sender: Any) {
        prograssHash()
    }
}

