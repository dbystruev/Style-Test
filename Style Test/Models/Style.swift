//
//  Style.swift
//  Style Test
//
//  Created by Denis Bystruev on 01/07/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

struct Style {
    let id: Int
    let name: String
    let images: [UIImage]
    
    static var all: [Style] {
        return [
            Style(id: 1, name: "Академический", images: [
                UIImage(named: "R01_1")!,
                UIImage(named: "R01_2")!,
            ]),
            Style(id: 2, name: "Деловой", images: [
                UIImage(named: "R02_1")!,
                UIImage(named: "R02_2")!,
            ]),
            Style(id: 3, name: "Городской шик", images: [
                UIImage(named: "R03_1")!,
                UIImage(named: "R03_2")!,
            ]),
            Style(id: 4, name: "Минимализм", images: [
                UIImage(named: "R04_1")!,
                UIImage(named: "R04_2")!,
            ]),
            Style(id: 5, name: "Романтический", images: [
                UIImage(named: "R05_1")!,
                UIImage(named: "R05_2")!,
            ]),
            Style(id: 6, name: "Ретро", images: [
                UIImage(named: "R06_1")!,
                UIImage(named: "R06_2")!,
            ]),
            Style(id: 7, name: "Кантри", images: [
                UIImage(named: "R07_1")!,
                UIImage(named: "R07_2")!,
            ]),
            Style(id: 8, name: "Пижамный", images: [
                UIImage(named: "R08")!,
            ]),
            Style(id: 9, name: "Экстравагантный", images: [
                UIImage(named: "R09_1")!,
                UIImage(named: "R09_2")!,
            ]),
            Style(id: 10, name: "Спортивный", images: [
                UIImage(named: "R10_1")!,
                UIImage(named: "R10_2")!,
                UIImage(named: "R10_3")!,
            ]),
            Style(id: 11, name: "Стрит-стайл", images: [
                UIImage(named: "R11_1")!,
                UIImage(named: "R11_2")!,
            ]),
        ]
    }
}
