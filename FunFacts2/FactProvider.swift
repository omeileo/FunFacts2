//
//  FactProvider.swift
//  FunFacts2
//
//  Created by Jase-Omeileo West on 6/29/17.
//  Copyright © 2017 Omeileo. All rights reserved.
//

import GameKit

struct FactProvider
{
    var facts: [String: [String]] =
        [
            "Funny":
                [
                    "Banging your head against a wall burns 150 calories an hour.",
                    "King Henry VIII slept with a gigantic axe beside him.",
                    "If you consistently fart for 6 years & 9 months, enough gas is produced to create the energy of an atomic bomb!",
                    "in 2015, more people were killed from injuries caused by taking a selfie than by shark attacks.",
                    "Smearing a small amount of dog feces on an insect bite will relieve the itching and swelling.",
                    "In New York, it is illegal to sell a haunted house without telling the buyer.",
                    "Donald duck comics were banned from Finland because he doesn’t wear pants.",
                    "The chance of you dying on the way to get lottery tickets is actually greater than your chance of winning.",
                    "The toothpaste “Colgate” in Spanish translates to “go hang yourself”",
                    "Pirates wore earrings because they believed it improved their eyesight."
                ],
            
            "Mushy":
                [
                    "Cows have best friends and they tend to spend most of their time together.",
                    "Otters hold hands when they sleep so they don't float away from one another.",
                    "Sea horses mate for life and travel holding each other's tails.",
                    "Cuddling can help wounds heal faster, due to the release of oxytocin.",
                    "Gentoo penguins propose to their lifemates with a pebble.",
                    
                    "Every year, hundreds of new trees grow because of squirrels forgetting where they buried their nuts.",
                    "Even if they've never been able to witness it themselves, blind people smile when they are happy. Smiling is a basic human instinct.",
                    "A pig's orgasm can last for 30 minutes.",
                    "Rats and mice are ticklish, and even laugh when tickled.",
                    "The voice of Winnie the Pooh and Tigger, Jim Cummings, calls children's hospitals in his spare time to cheer up sick children.",
                    "The Kingdom of Bhutan uses “Gross National Happiness” as an important national measurement."
                ],
            
            "Sad":
                [
                    "Turtles can breathe through their butts.",
                    "In China, killing a Panda is punishable by death.",
                    "CPR hardly ever succeeds.",
                    "Your brain starts to deteriorate at 27.",
                    "Cat bites have been linked to depression.",
                    "Hitler’s mother considered abortion but the doctor persuaded her to keep the baby.",
                    "Some worms will eat themselves if they can’t find any food!"
                ]
    ]
    
    func randomFact(type factType: String) -> String
    {
        let fact: [String]? = facts[factType]
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: (fact?.count)!)
        
        return fact![randomNumber]
    }
}

//struct HappyFactProvider
//{
//    let happyFacts =
//    [
//        "Every year, hundreds of new trees grow because of squirrels forgetting where they buried their nuts.",
//        "Even if they've never been able to witness it themselves, blind people smile when they are happy. Smiling is a basic human instinct.",
//                "A pig's orgasm can last for 30 minutes.",
//        "Rats and mice are ticklish, and even laugh when tickled.",
//        "The voice of Winnie the Pooh and Tigger, Jim Cummings, calls children's hospitals in his spare time to cheer up sick children.",
//        "The Kingdom of Bhutan uses “Gross National Happiness” as an important national measurement."
//    ]
//    
//    func randomHappyFact() -> String
//    {
//        
//    }
//}
//
//struct MushyFactProvider
//{
//    let mushyFacts =
//    [
//        "Cows have best friends and they tend to spend most of their time together.",
//        "Otters hold hands when they sleep so they don't float away from one another.",
//        "Sea horses mate for life and travel holding each other's tails.",
//        "Cuddling can help wounds heal faster, due to the release of oxytocin.",
//        "Gentoo penguins propose to their lifemates with a pebble."
//    ]
//}
//
//struct SadFactProvider
//{
//    let sadFacts =
//    [
//        "Turtles can breathe through their butts.",
//        "In China, killing a Panda is punishable by death.",
//        "CPR hardly ever succeeds.",
//        "Your brain starts to deteriorate at 27.",
//        "Cat bites have been linked to depression."
//    ]
//}

//to-do: create struct that stores array of other structs and choses a random element from one from of them
//struct FactProvider
//{
//    let facts = [let happyFact: HappyFactProvider(), let mushyFact: MushyFactProvider(), let sadFact: SadFactProvider()]
//}
