//
//  UIView+Animator.swift
//  Swift_Chained_Calculator
//
//  Created by mac on 2017/1/11.
//  Copyright © 2017年 Charlie.Cai. All rights reserved.
//

//UIView animator拓展 可以实现UIView动画的链式写法
import UIKit

class CLAnimator: NSObject {
    
    //动画时间
    private var durations:[TimeInterval] = [0]
    
    //动画闭包
    private var animations:[(() -> Void)] = [{}]
    
    //完成回调闭包
    private var completion:((Bool) -> Void) = {(true) in }
    
    //加入动画
    public func addAnimation(duration:TimeInterval = 0,animations:@escaping () -> Void) -> CLAnimator{
        self.durations.append(duration)
        self.animations.append(animations)
        return self
    }
    
    //加入完成回调
    public func completion(completion:@escaping ((Bool) -> Void)) -> CLAnimator{
        self.completion = completion
        return self
    }
    
    //执行动画
    public func animate() -> Void{
        
        if animations.count <= 1{
            UIView.animate(withDuration: durations[0], animations: animations[0], completion: completion)
        }else{
            UIView.animate(withDuration: durations.first!, animations: self.animations.first!, completion: { (_) in
                
                self.animations.removeFirst(1)
                self.durations.removeFirst(1)
                
                self.animate()
                
            })
        }

    }
    
}

extension UIView{
    class func animator() -> CLAnimator{
        return CLAnimator()
    }
}
