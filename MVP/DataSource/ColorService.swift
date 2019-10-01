//
//  TrafficLightService.swift
//  MVP
//
//  Created by Thinh Nguyen on 9/4/19.
//  Copyright © 2019 Trong Duong. All rights reserved.
//

import Foundation

class ColorService {
    
    func getColor(colorName: (String), callBack:(Color?) -> Void){
        let colorrr = [Color(colorName: "Red", description: "Stop"),
                             Color(colorName: "Green", description: "Go"),
                             Color(colorName: "Yellow", description: "About to change to red")
        ]
        
        if let foundColorr = colorrr.first(where: {$0.colorName == colorName}) {
            callBack(foundColorr)
        } else {
            callBack(nil)
        }
    }
}

