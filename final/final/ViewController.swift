//
//  ViewController.swift
//  final
//
//  Created by Daniel Tijerina on 4/25/18.
//  Copyright © 2018 Daniel Tijerina. All rights reserved.
//

import UIKit

class Global {
    
    var request1:Int = 0
    var request2:Int = 0
    var request3:Int = 0
    var request4:Int = 0
    var request5:Int = 0
    var request6:Int = 0
}

let global = Global()

class ViewController: UIViewController {
    
    @IBOutlet weak var totalDP: UILabel!
    
    override func viewWillAppear(_ animated: Bool){
        totalDP.text = "Total DP: \(global.request1 + global.request2 + global.request3 + global.request4 + global.request5 + global.request6)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

