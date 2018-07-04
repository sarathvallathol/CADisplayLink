//
//  ViewController.swift
//  CADisplayLink
//
//  Created by sarath on 27/06/18.
//  Copyright © 2018 com.sarath.tutorials. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let stackView = StatsStackView()
        view.addSubview(stackView)
        stackView.frame = view.frame
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

