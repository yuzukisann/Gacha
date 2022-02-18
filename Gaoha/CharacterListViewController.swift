//
//  CharacterListViewController.swift
//  Gaoha
//
//  Created by 高井佑月 on 2021/12/10.
//

import UIKit
import RealmSwift

class CharacterListViewController: UIViewController ,
    UICollectionViewDelegate,
    UICollectionViewDataSource,
    UICollectionViewDelegateFlowLayout
{
    
    @IBOutlet weak var collectionView: UICollectionView!
    var monsterList: [Monster] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.register(UINib(nibName: "CustomCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let realm = try! Realm()
        monsterList = realm.objects(Monster.self).map { $0 }
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return monsterList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.monsterImageView.frame = cell.bounds
        cell.monsterImageView.image = UIImage(named: monsterList[indexPath.row].imageName)
        if monsterList[indexPath.row].type == "red" {
            cell.backgroundColor = .red
        } else if monsterList[indexPath.row].type == "yellow" {
            cell.backgroundColor = .yellow
        } else if monsterList[indexPath.row].type == "blue" {
            cell.backgroundColor = .blue
        } else if monsterList[indexPath.row].type == "orenge" {
            cell.backgroundColor = .orange
        } else if monsterList[indexPath.row].type == "green" {
            cell.backgroundColor = .green
        }
//        let label = cell.contentView.viewWithTag(1) as! UILabel
//        
//        label.text = String(indexPath.row + 1)
        
//        if let cell = cell as? CustomCell {
//            
//        }
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let horizontalSpace:CGFloat = 5
        
        let cellSize:CGFloat = self.view.bounds.width/3 - horizontalSpace*2
        
        return CGSize(width: cellSize, height: cellSize)
        
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
