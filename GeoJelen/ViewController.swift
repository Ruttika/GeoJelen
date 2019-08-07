//
//  ViewController.swift
//  GeoJelen
//
//  Created by Rudolf Dani on 2019. 08. 07..
//  Copyright © 2019. Rudolf Dani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var authLabel: UILabel!
    @IBOutlet weak var authTextIn: UITextField!
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var updateBtn: UIButton!
    
    var authCode = 6666;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func updateBtnPushed(_ sender: Any) {
        
        authLabel.text = String(authCode);
        
    }
    
    


}

