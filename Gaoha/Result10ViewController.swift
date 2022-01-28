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
    
    
    var monsterArray: [Monster] = []
    
    
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
        monsterImageView1.image = UIImage(named: monsterArray[0].imageName)
        monsterImageView2.image = UIImage(named: monsterArray[1].imageName)
        monsterImageView3.image = UIImage(named: monsterArray[2].imageName)
        monsterImageView4.image = UIImage(named: monsterArray[3].imageName)
        monsterImageView5.image = UIImage(named: monsterArray[4].imageName)
        monsterImageView6.image = UIImage(named: monsterArray[5].imageName)
        monsterImageView7.image = UIImage(named: monsterArray[6].imageName)
        monsterImageView8.image = UIImage(named: monsterArray[7].imageName)
        monsterImageView9.image = UIImage(named: monsterArray[8].imageName)
        monsterImageView10.image = UIImage(named: monsterArray[9].imageName)
        

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
            //monsterArray.append(UIImage(named: "1")!)
            monsterArray.append(monsterList[0])
        }else if number > 12 {
            monsterArray.append(monsterList[1])
        }else if number > 8 {
            monsterArray.append(monsterList[2])
        }else if number > 6 {
            monsterArray.append(monsterList[3])
        } else {
            monsterArray.append(monsterList[4])
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
