//
//  ViewController.swift
//  Gaoha
//
//  Created by 高井佑月 on 2021/06/11.
//

import UIKit

import AVFoundation


class ViewController: UIViewController {
    
    let kawaiiPlayer: AVAudioPlayer = try! AVAudioPlayer(data: NSDataAsset(name:"kawaii")!.data)
    let zyannPlayer = try! AVAudioPlayer(data: NSDataAsset(name:"zyann")!.data)
    
    
    @IBOutlet var kawaiiButton: UIButton!
    
    @IBOutlet var zyannButton: UIButton!
    
    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func touchUpButton() {
        
        kawaiiPlayer.currentTime = 0

        kawaiiPlayer.play()
        
    }
    
    @IBAction func touchDownGuitarButton() {
        
        zyannPlayer.currentTime = 0

        zyannPlayer.play()
        
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

