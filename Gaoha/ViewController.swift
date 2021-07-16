//
//  ViewController.swift
//  Gaoha
//
//  Created by 高井佑月 on 2021/06/11.
//

import UIKit


class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!
    

    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
    }
    
    @IBAction func mainasu() {
        number = number - 10
        label.text = String(number)
    }

}

