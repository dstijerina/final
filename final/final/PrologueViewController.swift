//
//  PrologueViewController.swift
//  final
//
//  Created by Daniel Tijerina on 4/25/18.
//  Copyright © 2018 Daniel Tijerina. All rights reserved.
//

import UIKit

class PrologueViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var request1:Int = 0
    var request2:Int = 0
    
    var selection:String!
    
    
    
    @IBAction func selectOne(_ sender: UISwitch) {
        if sender.isOn {
            global.request1 = 5
        }
        else {
            global.request1 = 0
        }
    }
    
    @IBAction func selectTwo(_ sender: UISwitch) {
        if sender.isOn {
            global.request2 = 3
        }
        else {
            global.request2 = 0
        }
    }
    
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    let items = ["Choose a Party Member", "Lloyd", "Elie", "Tio", "Randy"]
    
    @IBOutlet weak var selectedLabel: UILabel!
    
    @IBOutlet weak var partyMember: UILabel!
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        selectedLabel.text = "You selected: " + selection
        if (selection == "Lloyd" ){
            partyMember.text = "Lloyd is an all-around leader. His tonfas allow him to strike field monsters twice, assuring a dizzied enemy. Be sure not to miss!"
        }
        else if (selection == "Elie"){
            partyMember.text = "Elie uses a classic orbal gun. While not offering as much punch as her fellow SSS members, her range makes for a safe bet for gaining advantage on small field monsters."
        }
        else if (selection == "Tio"){
            partyMember.text = "Tio uses a newly developed Orbal Staff. The staff's magic provides slightly more range than melee weapons at the cost of power. It may prove effective against certain enemies."
        }
        else if (selection == "Randy"){
            partyMember.text = "Randy's mechanized halberd offers the most raw power among the SSS's weapons. Use it to get the jump on larger enemies."
        }
        else if (selection == "Choose a Party Member"){
            partyMember.text = ""
        }

    }
    


    override func viewDidLoad() {
        picker.delegate = self
        picker.dataSource = self
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
