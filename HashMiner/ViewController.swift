//
//  ViewController.swift
//  HashMiner
//
//  Created by Jerry on 9/11/19.
//  Copyright © 2019 SoftChain Foundation Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hashPowerLabel: UILabel!
    
    
    var targetStr = "Hello, Swift"
    var array: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func prograssHash() {
        let start_time = Date().timeIntervalSince1970
        for _ in 1...50000 {
            array.append((targetStr.sha256().sha256()))
        }
        let used_time = Date().timeIntervalSince1970 - start_time
        hashPowerLabel.text = "Hash Power: \(Double(array.count)/used_time) h/s"
    }

    @IBAction func startBtnPressed(_ sender: Any) {
        array = []
        prograssHash()
    }
}

