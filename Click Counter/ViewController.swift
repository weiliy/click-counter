//
//  ViewController.swift
//  Click Counter
//
//  Created by Weili Yi on 2023/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var extLabel: UILabel!
    var backgroudColor: UIColor = UIColor.systemBackground;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // label
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        let extLabel = UILabel()
        extLabel.frame = CGRect(x: 200, y: 150, width: 60, height: 60)
        extLabel.text = "0"
        view.addSubview(extLabel)
        self.extLabel = extLabel
        
        // button
        let incrementButton = UIButton()
        incrementButton.frame = CGRect(x: 100, y: 250, width: 60, height: 60)
        incrementButton.setTitle("Up", for: .normal)
        incrementButton.setTitleColor(.blue, for: .normal)
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: .touchUpInside)
        view.addSubview(incrementButton)
        
        let decreaseButton = UIButton()
        decreaseButton.frame = CGRect(x: 200, y: 250, width: 60, height: 60)
        decreaseButton.setTitle("Down", for: .normal)
        decreaseButton.setTitleColor(.red, for: .normal)
        decreaseButton.addTarget(self, action: #selector(ViewController.decreaseCount), for: .touchUpInside)
        view.addSubview(decreaseButton)
        
        let toggleBackgroundColorButton = UIButton()
        toggleBackgroundColorButton.frame = CGRect(x:100, y: 320, width: 200, height: 60)
        toggleBackgroundColorButton.setTitle("Background Color", for: .normal)
        toggleBackgroundColorButton.setTitleColor(.blue, for: .normal)
        toggleBackgroundColorButton.addTarget(self, action: #selector(ViewController.toggleBackgroundColor), for: .touchUpInside)
        view.addSubview(toggleBackgroundColorButton)
    }
    
    @objc func incrementCount() {
        count += 1
        updateCunter()
    }
    
    @objc func decreaseCount() {
        self.count -= 1
        updateCunter()
    }
    
    @objc func toggleBackgroundColor() {
        if let color = view.backgroundColor {
            view.backgroundColor = color.accessibilityName == "pink red" ? .white : .systemPink
        }
    }
    
    // MARK: UI Functions
    func updateCunter() {
        let text = "\(self.count)"
        self.label.text = text
        self.extLabel.text = text
    }
}

