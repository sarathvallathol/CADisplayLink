//
//  StatusStackView.swift
//  CADisplayLink
//
//  Created by sarath on 04/07/18.
//  Copyright © 2018 com.sarath.tutorials. All rights reserved.
//

import UIKit

class StatsStackView: UIStackView {
    
    let countingLabel1 = CountingLabel(startValue: 100, endValue: 1500, animationDuration: 1.5)
    let countingLabel2 = CountingLabel(startValue: 5, endValue: 50, animationDuration: 2.0)
    let countingLabel3 = CountingLabel(startValue: 1, endValue: 10, animationDuration: 2.5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.axis = .vertical
        self.distribution = .fillEqually
        self.spacing = 32
        self.layoutMargins = UIEdgeInsets(top: 32, left: 32, bottom: 32, right: 32)
        self.isLayoutMarginsRelativeArrangement = true
        self.addSubview(countingLabel1)
        self.addSubview(countingLabel2)
        self.addSubview(countingLabel3)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

