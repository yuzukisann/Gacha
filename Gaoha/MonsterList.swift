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
    monster.imageName = "1"
    monster.type = "red"
    return monster
}()



let monster2: Monster = {
    let monster = Monster()
    monster.name = "ペロ"
    monster.imageName = "2"
    monster.type = "yellow"
    return monster
}()


let monster3: Monster = {
    let monster = Monster()
    monster.name = "キャン"
    monster.imageName = "3"
    monster.type = "blue"
    return monster
}()




let monster4: Monster = {
    let monster = Monster()
    monster.name = "クリス"
    monster.imageName = "4"
    monster.type = "orenge"
    return monster
}()




let monster5: Monster = {
    let monster = Monster()
    monster.name = "ヒモ"
    monster.imageName = "5"
    monster.type = "green"
    return monster
}()



let monsterList: [Monster] = [
    monster1,
    monster2,
    monster3,
    monster4,
    monster5,
]
