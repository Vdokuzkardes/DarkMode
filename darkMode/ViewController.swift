//
//  ViewController.swift
//  darkMode
//
//  Created by Vedat Dokuzkardeş on 14.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .dark //seçili olan view de geçerli
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let userInterfaceStyele = traitCollection.userInterfaceStyle
        
        if userInterfaceStyele == .dark {
            changeBtn.tintColor = UIColor.white
        }else{
            changeBtn.tintColor = UIColor.red
        }

    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyele = traitCollection.userInterfaceStyle
        
        if userInterfaceStyele == .dark {
            changeBtn.tintColor = UIColor.white
        }else{
            changeBtn.tintColor = UIColor.red
        }

    }


}

