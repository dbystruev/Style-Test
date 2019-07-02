//
//  Question.swift
//  Style Test
//
//  Created by Denis Bystruev on 01/07/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

struct Question {
    let text: String
    let answers: [Answer]
    
    static var all: [Question] {
        return [
            Question(text: "Какие цвета и принты вы предпочитаете?", answers: [
                Answer(
                    text: "Сдержанная гамма: коричневый, серый, синий, без ярких рисунков и принтов",
                    styles: [1, 2],
                    images: [UIImage(named: "Q1A1")!]
                ),
                Answer(
                    text: "Сочетание пастельных тонов с более сочными и яркими цветами, возможно добавление геометрических и анималистических принтов",
                    styles: [3, 5, 11],
                    images: [UIImage(named: "Q1A2")!]
                ),
                Answer(
                    text: "Монохромные образы без принтов, доминирует черно-белое сочетание",
                    styles: [4, 10],
                    images: [UIImage(named: "Q1A3")!]
                ),
                Answer(
                    text: "Коричневый, бежевый, золотой, возможно добавление других насыщенных тонов и блестящего декора",
                    styles: [6, 9],
                    images: [UIImage(named: "Q1A4")!]
                ),
                Answer(
                    text: "Рыжий, пыльно-розовый, бледно-желтый, возможно добавление цветочного, клеточного или мелкого принта",
                    styles: [7, 8],
                    images: [UIImage(named: "Q1A5")!]
                ),
            ]),
            Question(text: "Ваши любимые предметы гардероба?", answers: [
                Answer(
                    text: "Прямые брюки и джинсы, футболки и топы простого кроя, кеды",
                    styles: [8, 4],
                    images: [UIImage(named: "Q2A1")!]
                ),
                Answer(
                    text: "Платья, юбки, блузки с декольте, туники, туфли на высоком каблуке",
                    styles: [5, 6, 9],
                    images: [UIImage(named: "Q2A2")!]
                ),
                Answer(
                    text: "Широкие джинсы и рубашки, леггинсы, худи, кроссовки",
                    styles: [10, 11],
                    images: [UIImage(named: "Q2A3")!]
                ),
                Answer(
                    text: "Джинсы с завышенной талией, зауженные брюки, водолазки, кожаные ремни, высокие сапоги",
                    styles: [3, 7],
                    images: [UIImage(named: "Q2A4_1")!, UIImage(named: "Q2A4_2")!]
                ),
                Answer(
                    text: " Классические брюки и блузки, пиджаки, жилетки, кардиганы, туфли на устойчивом каблуке",
                    styles: [1, 2],
                    images: [UIImage(named: "Q2A5")!]
                ),
            ]),
            Question(text: "Стилизация и костюмы каких фильмов вам симпатизируют?", answers: [
                Answer(
                    text: "Великий Гэтсби; В джазе только девушки; Завтрак у Тиффани",
                    styles: [6, 9],
                    images: [UIImage(named: "Q3A1_1")!, UIImage(named: "Q3A1_2")!, UIImage(named: "Q3A1_3")!]
                ),
                Answer(
                    text: "Вселенная Стивена Хокинга; Гарри Поттер; Общество мертвых поэтов",
                    styles: [1, 4],
                    images: [UIImage(named: "Q3A2_1")!, UIImage(named: "Q3A2_2")!, UIImage(named: "Q3A2_3")!]
                ),
                Answer(
                    text: "Секс в большом городе; Форс-мажоры; Дьявол носит Prada",
                    styles: [3, 2, 11],
                    images: [UIImage(named: "Q3A3_1")!, UIImage(named: "Q3A3_2")!, UIImage(named: "Q3A3_3")!, UIImage(named: "Q3A3_4")!]
                ),
                Answer(
                    text: "Омерзительная восьмерка; Бандитки; Легенды осени",
                    styles: [7, 10],
                    images: [UIImage(named: "Q3A4_1")!, UIImage(named: "Q3A4_2")!, UIImage(named: "Q3A4_3")!]
                ),
                Answer(
                    text: "Гордость и предубеждение; До встречи с тобой; Восемь женщин",
                    styles: [5],
                    images: [UIImage(named: "Q3A5_1")!, UIImage(named: "Q3A5_2")!, UIImage(named: "Q3A5_3")!]
                ),
            ]),
            Question(text: "Какие фасоны, силуэты вы предпочитаете?", answers: [
                Answer(
                    text: "Полуприлегающие фасоны, приталенные топы, мягкие силуэты",
                    styles: [3, 5, 7],
                    images: [UIImage(named: "Q4A1")!]
                ),
                Answer(
                    text: "Прямые линии, строгий силуэт",
                    styles: [1, 2],
                    images: [UIImage(named: "Q4A2")!]
                ),
                Answer(
                    text: "Свободный крой, оверсайз",
                    styles: [4, 10, 8],
                    images: [UIImage(named: "Q4A3")!]
                ),
                Answer(
                    text: "Необычный крой одежды, асимметричные и нестандартные фасоны",
                    styles: [9, 11],
                    images: [UIImage(named: "Q4A4")!]
                ),
                Answer(
                    text: "Прямой силуэт с простым кроем, украшенный множеством декоративных элементов",
                    styles: [6],
                    images: [UIImage(named: "Q4A5")!]
                ),
            ]),
            Question(text: "Какое впечатление вы хотели бы производить на окружающих?", answers: [
                Answer(
                    text: "Легкий игривый образ, наполненный нежностью и женственностью",
                    styles: [7, 5],
                    images: [UIImage(named: "Q5A1")!]
                ),
                Answer(
                    text: "Спокойный сдержанный образ, не перегруженный аксессуарами",
                    styles: [8, 4],
                    images: [UIImage(named: "Q5A2")!]
                ),
                Answer(
                    text: "Строгий образ деловой женщины",
                    styles: [1, 2],
                    images: [UIImage(named: "Q5A3")!]
                ),
                Answer(
                    text: "Яркий необычный образ, привлекающий внимание окружающих",
                    styles: [6, 3, 9],
                    images: [UIImage(named: "Q5A4")!]
                ),
                Answer(
                    text: "Слегка небрежный образ, подобранный как будто на скорую руку",
                    styles: [10, 11],
                    images: [UIImage(named: "Q5A5")!]
                ),
            ]),
        ]
    }
}
