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
    
    // UserDefaultsを使うことを宣言する
    var saveData: UserDefaults = UserDefaults.standard
    
    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        kawaiiButton.isEnabled = false
        zyannButton.isEnabled = false
        
        // moneyという名前で保存されている値を取り出して
        number = saveData.object(forKey: "money") as? Int ?? 0
        // labelに反映させる
        label.text = String(number)
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
        // UserDefaultsにnumberを値をmoneyって名前で保存する
        saveData.set(number, forKey: "money")
        
        // お金が10以上だったら、ボタンを押せるようにする.
        if number >= 10 {
            kawaiiButton.isEnabled = true
        }
        if number >= 100 {
            zyannButton.isEnabled = true
        }
    }
    
    @IBAction func mainasu() {
        number = number - 10
        label.text = String(number)
        
        if number < 10 {
            kawaiiButton.isEnabled = false
        }
        
    }
    
    @IBAction func mainasu2() {
        number = number - 100
        label.text = String(number)
        
        if number < 100 {
            zyannButton.isEnabled = false
        }
        
        
            
        
        
    }
    
    
}
