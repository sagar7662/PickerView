//
//  ViewController.swift
//  SKPickerView
//
//  Created by Speedy Singh on 1/10/18.
//  Copyright © 2018 Speedy Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectDateButton: UIButton!
    @IBOutlet weak var selectAgeButton: UIButton!
    
    @IBAction func selectAgeButtonAction(_ sender: Any) {
        PickerView.shared.showPicker(["1", "2"], onView: view, completion: { (selectedObject) in
            guard let selectedString = selectedObject as? String else { return }
            self.selectAgeButton.setTitle(selectedString, for: .normal)
        })
    }
    
    @IBAction func selectDateButtonAction(_ sender: Any) {
        PickerView.shared.showDatePicker(minimumDate: Date(), maximumDate: Date(), datePickerMode: .date, onView: view, completion: { (selectedObject) in
            guard let selectedDate = selectedObject as? Date else { return }
            self.selectDateButton.setTitle(selectedDate.description, for: .normal)
        })
    }
}

