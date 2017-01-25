//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    func solveTrivia(_ trivia: [String : String]) -> String {
        
        // Implement this function!
        var charMatch:Bool = false
        var stateName = ""
        for (state,capital) in trivia {
            charMatch = false
            for c1 in state.lowercased().characters {
                if capital.lowercased().characters.contains(c1) {
                    charMatch = true
                    break
                }
            }
            if !charMatch {
                stateName = state
            }
        }
        return stateName
    }
}

