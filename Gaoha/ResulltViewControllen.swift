//
//  ResuitViewControllen.swift
//  Gaoha
//
//  Created by 高井佑月 on 2021/06/11.
//

import UIKit
import RealmSwift
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
            // モンスターを取り出す
            let monster = monsterList[0]
            // Monsterの中のimageNameを取り出しす
            monsterImageView.image = UIImage(named: monster.imageName)
            
            // モンスターを保存
            let realm = try! Realm()
            try! realm.write {
                realm.add(monster)
            }
            
        } else if number > 12 {
        
            
            let monster = monsterList[1]
            // Monsterの中のimageNameを取り出しす
            monsterImageView.image = UIImage(named: monster.imageName)
            
            // モンスターを保存
            let realm = try! Realm()
            try! realm.write {
                realm.add(monster)
            }
            
        } else if number > 8 {
            
            let monster = monsterList[2]
            // Monsterの中のimageNameを取り出しす
            monsterImageView.image = UIImage(named: monster.imageName)
            
            // モンスターを保存
            let realm = try! Realm()
            try! realm.write {
                realm.add(monster)
            }
            
        } else if number > 6 {
            
            let monster = monsterList[3]
            // Monsterの中のimageNameを取り出しす
            monsterImageView.image = UIImage(named: monster.imageName)
            
            // モンスターを保存
            let realm = try! Realm()
            try! realm.write {
                realm.add(monster)
            }
            
        }
        // それ以外
        else {
        
            let monster = monsterList[4]
            // Monsterの中のimageNameを取り出しす
            monsterImageView.image = UIImage(named: monster.imageName)
            
            // モンスターを保存
            let realm = try! Realm()
            try! realm.write {
                realm.add(monster)
            }
            
            
            
            
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



