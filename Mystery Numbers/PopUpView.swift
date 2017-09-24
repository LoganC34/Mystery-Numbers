//
//  PopUpView.swift
//  Mystery Numbers
//
//  Created by Logan Cain on 9/23/17.
//  Copyright © 2017 Logan Cain. All rights reserved.
//

import UIKit

class PopUpView: UIViewController {

    @IBOutlet weak var popUpView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.layer.cornerRadius = 10
        popUpView.layer.masksToBounds = true

    }

    @IBAction func closePopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
