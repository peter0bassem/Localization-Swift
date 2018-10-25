//
//  ViewController.swift
//  localizationtest
//
//  Created by Peter Bassem on 10/25/18.
//  Copyright © 2018 corpy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.yellow
        navigationItem.title = LocalizationSystem.sharedInstance.localizedStringForKey(key: "navigation_title", comment: "")
        headerLabel.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "header", comment: "")
        languageLabel.text = LocalizationSystem.sharedInstance.getLanguage()
        nameLabel.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "name_label", comment: "")
        nameTextField.placeholder = LocalizationSystem.sharedInstance.localizedStringForKey(key: "name_textfield", comment: "")
        nextButton.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "next_button", comment: ""), for: .normal)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: LocalizationSystem.sharedInstance.localizedStringForKey(key: "navbar_back_button", comment: ""), style: .plain, target: nil, action: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton_Event(_ sender: UIButton) {
        if let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "second_view_controller") as? UIViewController {
            navigationController?.pushViewController(secondViewController, animated: true)
        }
    }
}

