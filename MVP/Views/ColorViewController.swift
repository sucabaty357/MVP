//
//  TrafficLightViewController.swift
//  MVP
//
//  Created by Thinh Nguyen on 9/4/19.
//  Copyright © 2019 Trong Duong. All rights reserved.
//

import UIKit
import RealmSwift

class ColorViewController: UIViewController, ColorViewDelegate {
    
    private let colorPresenter = ColorPresenter(colorService: ColorService())
    
    func displayColor(description: (String)) {
        descriptionLabel.text = description
    }
    
    @IBAction func redLightAction(_ sender: Any) {
        colorPresenter.trafficLightColorSelected(colorName: "Red")
    }
    
    @IBAction func yellowLightAction(_ sender: Any) {
        colorPresenter.trafficLightColorSelected(colorName: "Yellow")
    }
    
    @IBAction func greenLightAction(_ sender: Any) {
        colorPresenter.trafficLightColorSelected(colorName: "Green")
    }
    
    @IBOutlet weak var descriptionLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        colorPresenter.setViewDelegate(colorViewDelegate: self)
    }
    
}
