//
//  MonsterList.swift
//  Gaoha
//
//  Created by 高井佑月 on 2022/01/14.
//

import Foundation



let monster1: Monster = {
    let monster = Monster()
    monster.name = "アメ"
    monster.imageName = "ame"
    return monster
}()



let monster2: Monster = {
    let monster = Monster()
    monster.name = "ペロ"
    monster.imageName = "pero"
    return monster
}()


let monster3: Monster = {
    let monster = Monster()
    monster.name = "キャン"
    monster.imageName = "kyann"
    return monster
}()




let monster4: Monster = {
    let monster = Monster()
    monster.name = "クリス"
    monster.imageName = "kurisu"
    return monster
}()




let monster5: Monster = {
    let monster = Monster()
    monster.name = "ヒモ"
    monster.imageName = "himo"
    return monster
}()



let monsterList: [Monster] = [
    monster1,
    monster2,
    monster3,
    monster4,
    monster5,
]
