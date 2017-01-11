//
//  CLCalculator.swift
//  Swift_Chained_Calculator
//
//  Created by mac on 2017/1/11.
//  Copyright © 2017年 Charlie.Cai. All rights reserved.
//

import UIKit

class CLCalculator: NSObject {
    
    //初始化构造方法
    init(_ number:Int) {
        super.init()
        self.num = number
    }
    
    private var num:Int = 0
    //对象方法
    
    //加法
    public func add(_ number:Int) -> CLCalculator{
        num += number
        return self
    }
    
    //减法
    public func sub(_ number:Int) -> CLCalculator{
        num -= number
        return self
    }
    
    //乘法
    public func mul(_ number:Int) -> CLCalculator{
        num *= number
        return self
    }
    
    //计算
    public func calculate() -> Int{
        print(num)
        return num
    }
    
//    //除法
//    public func div(number:Int) -> CLCalculator{
//        num /= number
//        return self
//    }
    
}
