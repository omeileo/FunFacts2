//
//  ViewController.swift
//  FunFacts2
//
//  Created by Jase-Omeileo West on 6/29/17.
//  Copyright © 2017 Omeileo. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    let fact = FactProvider()
    let backgroundColor = BackgroundColorProvider()
    var factType: String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        factType = "Funny"
        //factLabel.text = fact.randomFact(type: factType)
        
        view.backgroundColor = backgroundColor.randomBackgroundColor(type: factType)
        factLabel.text = "Want to see a cool fact? Tap one of the button\'s below!"
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunnyFact()
    {
        factType = "Funny"
        view.backgroundColor = backgroundColor.randomBackgroundColor(type: factType)
        factLabel.text = fact.randomFact(type: factType)
        titleLabel.text = "\(factType) Facts"
    }
    
    @IBAction func showMushyFact()
    {
        factType = "Mushy"
        view.backgroundColor = backgroundColor.randomBackgroundColor(type: factType)
        factLabel.text = fact.randomFact(type: factType)
        titleLabel.text = "\(factType) Facts"
    }
    
    @IBAction func showSadFact()
    {
        factType = "Sad"
        view.backgroundColor = backgroundColor.randomBackgroundColor(type: factType)
        factLabel.text = fact.randomFact(type: factType)
        titleLabel.text = "\(factType) Facts"
    }
}
