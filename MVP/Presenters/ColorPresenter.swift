//
//  TrafficLightPresenter.swift
//  MVP
//
//  Created by Thinh Nguyen on 9/4/19.
//  Copyright © 2019 Trong Duong. All rights reserved.
//

import UIKit

protocol ColorViewDelegate: NSObjectProtocol {
    func displayColor(description:(String))
}

class ColorPresenter {
    private let colorService: ColorService
    weak private var colorViewDelegate: ColorViewDelegate?
    
    init(colorService: ColorService){
        self.colorService = colorService
    }
    
    func setViewDelegate(colorViewDelegate:ColorViewDelegate?){
        self.colorViewDelegate = colorViewDelegate!
    }
    
    func trafficLightColorSelected(colorName:(String)){
        
        colorService.getColor(colorName: colorName) { [weak self] color in
            
            if let color = color {
                self?.colorViewDelegate?.displayColor(description: color.description)
            }
        }
    }
}
