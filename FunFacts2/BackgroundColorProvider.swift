//
//  BackgroundColorProvider.swift
//  FunFacts2
//
//  Created by Jase-Omeileo West on 6/30/17.
//  Copyright © 2017 Omeileo. All rights reserved.
//

import GameKit
import UIKit

struct BackgroundColorProvider
{
    let backgroundColors: [String: [UIColor]] =
    [
        "Funny":
            [
                UIColor(red: 243/255.0, green: 156/255.0, blue: 18/255.0, alpha: 1.0), //rgba(243, 156, 18,1.0) - buttercup yellow
                UIColor(red: 243/255.0, green: 156/255.0, blue: 18/255.0, alpha: 1.0), //rgba(243, 156, 18,1.0) - orange
                UIColor(red: 230/255.0, green: 126/255.0, blue: 24/255.0, alpha: 1.0) //rgba(230, 126, 34,1.0) - carrot
            ],
        
        "Mushy":
            [
                UIColor(red: 192/255.0, green: 57/255.0, blue: 43/255.0, alpha: 1.0), //rgba(192, 57, 43,1.0) - pomegranate
                UIColor(red: 150/255.0, green: 40/255.0, blue: 27/255.0, alpha: 1.0), //rgba(150, 40, 27,1.0) - old brick orange
                UIColor(red: 207/255.0, green: 0.0, blue: 15/255.0, alpha: 1.0) //rgb(207, 0, 15) - monzo
            ],
        
        "Sad":
            [
                UIColor(red: 41/255.0, green: 128/255.0, blue: 185/255.0, alpha: 1.0), //rgba(41, 128, 185,1.0) - peter river
                UIColor(red: 127/255.0, green: 140/255.0, blue: 141/255.0, alpha: 1.0), //rgba(127, 140, 141,1.0) - asbestos
                UIColor(red: 44/255.0, green: 62/255.0, blue: 80/255.0, alpha: 1.0) //rgba(44, 62, 80,1.0) - midnight blue
            ]
    ]
    
    func randomBackgroundColor(type factType: String) -> UIColor
    {
        let backgroundColor: [UIColor]? = backgroundColors[factType]
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: (backgroundColor?.count)!)
        
        return (backgroundColor?[randomNumber])!
    }
}
