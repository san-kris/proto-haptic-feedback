//
//  ViewController.swift
//  proto-haptic-feedback
//
//  Created by Santosh Krishnamurthy on 3/8/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func vibrateButtonPressed(_ sender: UIButton) {
        HapticsManager.shared.vibrate(for: .success)
        HapticsManager.shared.selectionVibrate()
    }
}

