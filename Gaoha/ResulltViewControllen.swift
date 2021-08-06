//
//  ResuitViewControllen.swift
//  Gaoha
//
//  Created by 高井佑月 on 2021/06/11.
//

import UIKit
import AVFoundation

class ResultViewController: UIViewController {
    
    
    let kawaiiPlayer: AVAudioPlayer = try! AVAudioPlayer(data: NSDataAsset(name:"kawaii")!.data)
    
    
    //    let rappaPlayer = try! AVAudioPlayer(data:
    
    
    
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        monsterImageView.frame.origin.y = -800
        
        
        // 0から9までのなかでランダム
        number = Int.random(in: 0...15)
        // if=もし
        // もしnumberが9だったら
        if number == 9 {
            monsterImageView.image = UIImage(named: "1")
            
            // numberが7以上だったら
            //        } else if number > 7 {
            // もしnumberが9だったら
        } else if number > 12 {
            monsterImageView.image = UIImage(named: "2")
            
        } else if number > 8 {
            monsterImageView.image = UIImage(named: "3")
            
        } else if number > 6 {
            monsterImageView.image = UIImage(named: "4")
            
        }
        // それ以外
        else {
            monsterImageView.image = UIImage(named: "5")
            
        }
        
        
        
        
        
        
    }
    
    //
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
                            
        sleep(1)
        
        kawaiiPlayer.currentTime = 0

        kawaiiPlayer.play()
        
        UIView.animate(
            withDuration: 1,
            
            animations: {
                self.monsterImageView.frame.origin.y = 100
                
            },
            
            completion: nil
        )
    }
    
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
}



