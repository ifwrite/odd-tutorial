//
//  ViewController.swift
//  LayoutDemo
//
//  Created by emir on 2017/3/15.
//  Copyright © 2017年 Emir. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    //彩色View高度约束
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    
    @IBAction func btnAction(_ sender: Any) {
        
        //这里写上这句话完全是为了在下次更新周期到来之前，确保布局的更改都是已经完成的， 避免一些不必要的麻烦！建议加上啊
        view.layoutIfNeeded()
        
        if self.heightConstraint.constant == 100 {
            self.heightConstraint.constant = 400
        }else {
            self.heightConstraint.constant = 100
        }

        UIView.animate(withDuration: 1.0) {
            
            /**
             使用layoutIfNeeded()，会有动画效果。
             使用setNeedsLayout()，没有动画效果。
             */

            self.view.layoutIfNeeded()
//            self.view.setNeedsLayout()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

