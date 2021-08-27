//
//  Result10ViewController.swift
//  Gaoha
//
//  Created by 高井佑月 on 2021/08/06.
//

import UIKit

class Result10ViewController: UIViewController {
    
    @IBOutlet var monsterImageView1: UIImageView!
    @IBOutlet var monsterImageView2: UIImageView!
    @IBOutlet var monsterImageView3: UIImageView!
    @IBOutlet var monsterImageView4: UIImageView!
    @IBOutlet var monsterImageView5: UIImageView!
    @IBOutlet var monsterImageView6: UIImageView!
    @IBOutlet var monsterImageView7: UIImageView!
    @IBOutlet var monsterImageView8: UIImageView!
    @IBOutlet var monsterImageView9: UIImageView!
    @IBOutlet var monsterImageView10: UIImageView!
    
    
    var monsterArray: [UIImage] = []
    
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
//画面が表示された時
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //appendImage()を１０回繰り返す
        for _ in 1...10 {
            appendImage()
        }
        
        monsterImageView1.image = monsterArray[0]
        monsterImageView2.image = monsterArray[1]
        monsterImageView3.image = monsterArray[2]
        monsterImageView4.image = monsterArray[3]
        monsterImageView5.image = monsterArray[4]
        monsterImageView6.image = monsterArray[5]
        monsterImageView7.image = monsterArray[6]
        monsterImageView8.image = monsterArray[7]
        monsterImageView9.image = monsterArray[8]
        monsterImageView10.image = monsterArray[9]

        // Do any additional setup after loading the view.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("hoge")
    }
    
    func appendImage() {
       //8から９までの中のランダム
        let number = Int.random(in: 0...15)
        if number == 9 {
            
            
        //配列を画像に追加
            monsterArray.append(UIImage(named: "1")!)
        }else if number > 12 {
            monsterArray.append(UIImage(named: "2")!)
        }else if number > 8 {
            monsterArray.append(UIImage(named: "3")!)
        }else if number > 6 {
            monsterArray.append(UIImage(named: "4")!)
        } else {
            monsterArray.append(UIImage(named: "5")!)
        }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
