//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain{
    var storyNumber = 0
    
    let stories = [
        Story(title: "You see a fork in the road.",
              choice1: "Take a left.",
              choice2: "Take a right."),
        Story(title: "You see a tiger.",
              choice1: "Shout for help.",
              choice2: "Play dead."),
        Story(title: "You find a treasure chest.",
              choice1: "Open it.",
              choice2: "Check for traps.")
    ]
    
    mutating func nextStory(userChoice: String) -> String{
        if(userChoice == stories[0].choice1){
            storyNumber = 1
            return stories[1].title
           
        }
        else if(userChoice == stories[0].choice2){
            storyNumber = 2
            return stories[2].title
        }
        else{
            return "Error incorrect title"
        }
    }
    func updateButtonText() -> [String]{
        if(storyNumber == 1){
            let buttonTexts = [stories[1].choice1, stories[1].choice2]
            return buttonTexts
        }
        else if(storyNumber == 2){
            let buttonTexts = [stories[2].choice1, stories[2].choice2]
            return buttonTexts
        }
        else{
            let error = ["er"]
            print("this runs")
            return error
        }
    }
}
