//
//  ViewController.swift
//  Swift_Chained_Calculator
//
//  Created by mac on 2017/1/11.
//  Copyright © 2017年 Charlie.Cai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //链式计算器
        CLCalculator(3).add(1).add(2).mul(3).sub(4).calculate()
        
        let blackView = UIView()
        blackView.backgroundColor = UIColor.black
        blackView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.addSubview(blackView)
        
        UIView.animator().addAnimation(duration: 2) {
            blackView.frame = CGRect(x: 100, y: 0, width: 50, height: 50)
        }.addAnimation(duration: 0.25)  {
            blackView.frame = CGRect(x: 300, y: 0, width: 50, height: 50)
        }.addAnimation(duration: 1)  {
            blackView.frame = CGRect(x: 300, y: 100, width: 50, height: 50)
        }.addAnimation(duration: 5)  {
            blackView.frame = CGRect(x: 300, y: 300, width: 50, height: 50)
        }.completion { (_) in
            blackView.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        }.animate()
    }

}

