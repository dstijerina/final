//
//  OneViewController.swift
//  final
//
//  Created by Daniel Tijerina on 4/25/18.
//  Copyright © 2018 Daniel Tijerina. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {
    
    var request3:Int = 0
    var request4:Int = 0
    var request5:Int = 0
    var request6:Int = 0
    
    @IBAction func selectThree(_ sender: UISwitch) {
        if sender.isOn {
            global.request3 = 3
        }
        else {
            global.request3 = 0
        }
    }
    
    @IBAction func selectFour(_ sender: UISwitch) {
        if sender.isOn {
            global.request4 = 3
        }
        else {
            global.request4 = 0
        }
    }
    
    @IBAction func selectFive(_ sender: UISwitch) {
        if sender.isOn {
            global.request5 = 5
        }
        else {
            global.request5 = 0
        }
    }
    
    @IBAction func selectSix(_ sender: UISwitch) {
        if sender.isOn {
            global.request6 = 5
        }
        else {
            global.request6 = 0
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
