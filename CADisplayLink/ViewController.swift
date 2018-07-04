//
//  ViewController.swift
//  CADisplayLink
//
//  Created by sarath on 27/06/18.
//  Copyright © 2018 com.sarath.tutorials. All rights reserved.
//

import UIKit

class CountingLabel: UILabel {
    
    let startValue: Double
    let endValue: Double   = 1000
    let animationDuration: Double = 3.5
    let animationStartDate = Date()
    var displayLink: CADisplayLink?
    
    init(startValue: Double) {
        
        self.startValue = startValue
        super.init(frame: .zero)
        
        self.text = "\(startValue)"
        self.textAlignment = .center
        self.font = UIFont.boldSystemFont(ofSize: 18)
        
        //CADISPLAY link animation
        displayLink = CADisplayLink(target: self, selector: #selector(handelUpdate))
        displayLink?.add(to: .main, forMode:.defaultRunLoopMode)
        
    }
    @objc func handelUpdate() {
        
        let now = Date()
        
        let elapsedTime = now.timeIntervalSince(animationStartDate)
        
        if elapsedTime > animationDuration{
            self.text = "\(endValue)"
            displayLink?.invalidate()
            displayLink = nil
            
        }else{
            let percentage = elapsedTime / animationDuration
            let value = startValue + percentage * (endValue - startValue)
            self.text = "\(value)"
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




class ViewController: UIViewController {

    
    let countingLabel = CountingLabel(startValue: 888)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(countingLabel)
        countingLabel.frame = view.frame
       
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

