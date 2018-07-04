//
//  ViewController.swift
//  CADisplayLink
//
//  Created by sarath on 27/06/18.
//  Copyright © 2018 com.sarath.tutorials. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let countingLabel: UILabel  = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "1234"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(countingLabel)
        countingLabel.frame = view.frame
        let displayLink = CADisplayLink(target: self, selector: #selector(handelUpdate))
        displayLink.add(to: .main, forMode:.defaultRunLoopMode)
 
    }
    
    var startValue: Double = 500
    let endValue: Double   = 1000
    let animationDuration: Double = 3.5
    let animationStartDate = Date()
    
    
    @objc func handelUpdate() {
        
        let now = Date()
        
        let elapsedTime = now.timeIntervalSince(animationStartDate)
        
        if elapsedTime > animationDuration{
            self.countingLabel.text = "\(endValue)"

        }else{
        let percentage = elapsedTime / animationDuration
        let value = startValue + percentage * (endValue - startValue)
        self.countingLabel.text = "\(value)"
        }
        
    }
//    func stopDisplayLink() {
//        displayLink?.invalidate()
//        displayLink = nil
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

