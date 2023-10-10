//
//  ViewController.swift
//  Click Counter
//
//  Created by Weili Yi on 2023/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count = 0
    var backgroudColor: UIColor = UIColor.systemBackground;
    
    // MARK: Actions
    
    @IBAction func incrementCount() {
        count += 1
        updateCunter()
    }
    
    @IBAction func decreaseCount() {
        self.count -= 1
        updateCunter()
    }
    
    @IBAction func toggleBackgroundColor() {
        if let color = view.backgroundColor {
            view.backgroundColor = color.accessibilityName == "pink red" ? .white : .systemPink
        }
    }
    
    // MARK: UI Functions
    func updateCunter() {
        self.label.text = "\(self.count)"
    }
}
