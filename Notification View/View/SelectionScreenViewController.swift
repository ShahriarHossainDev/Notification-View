//
//  SelectionScreenViewController.swift
//  Notification View
//
//  Created by Shishir_Mac on 11/3/23.
//

import UIKit

class SelectionScreenViewController: UIViewController {

    @IBOutlet weak var imperialButton: UIButton!
    @IBOutlet weak var rebelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func imperialButtonAction(_ sender: UIButton) {
        let name = Notification.Name(rawValue: darkNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func rebelButtonAction(_ sender: UIButton) {
        let name = Notification.Name(rawValue: lightNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }

}
