//
//  ResuitViewControllen.swift
//  Gaoha
//
//  Created by 高井佑月 on 2021/06/11.
//

import UIKit
import AVFoundation

class ResultViewController: UIViewController {
    
    
    
    
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 0から9までのなかでランダム
        number = Int.random(in: 0...15)
        // if=もし
        // もしnumberが9だったら
        if number == 9 {
            monsterImageView.image = UIImage(named: "1")
            backgroundImageView.image = UIImage(named: "kusa")
        // numberが7以上だったら
//        } else if number > 7 {
        // もしnumberが9だったら
        } else if number > 12 {
            monsterImageView.image = UIImage(named: "2")
            backgroundImageView.image = UIImage(named: "kusa")
        } else if number > 8 {
            monsterImageView.image = UIImage(named: "3")
            backgroundImageView.image = UIImage(named: "kusa")
        } else if number > 6 {
            monsterImageView.image = UIImage(named: "4")
            backgroundImageView.image = UIImage(named: "kusa")
        }
        // それ以外
        else {
            monsterImageView.image = UIImage(named: "5")
            backgroundImageView.image = UIImage(named: "kusa")
        }
        
        }
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }

    
        

    }


    
