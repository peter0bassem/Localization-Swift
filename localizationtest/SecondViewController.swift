//
//  SecondViewController.swift
//  localizationtest
//
//  Created by Peter Bassem on 10/25/18.
//  Copyright © 2018 corpy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var changeLanguageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = LocalizationSystem.sharedInstance.localizedStringForKey(key: "second_view_title", comment: "")
        changeLanguageButton.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "change_language", comment: ""), for: .normal)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeLanguageButton_Event(_ sender: UIButton) {
        if LocalizationSystem.sharedInstance.getLanguage() == "ar" {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        } else {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "ar")
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        }
        
        let navcont = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "second_view_controller") as? UIViewController
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.window?.rootViewController = navcont
    }
}
