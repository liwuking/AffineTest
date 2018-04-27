//
//  ViewController.swift
//  AffineTest
//
//  Created by lbe on 2018/4/27.
//  Copyright © 2018年 liwuyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.black
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "affineImage"))
        imageView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        imageView.contentMode = .scaleAspectFill
        self.view.addSubview(imageView)
        
        //注: 当tx为正值时,会向x轴正方向平移,反之,则向x轴负方向平移;当ty为正值时,会向y轴正方向平移,反之,则向y轴负方向平移
        //imageView.transform = CGAffineTransform(translationX: 100, y: 100)
        
        //注1: 当angle为正值时,逆时针旋转坐标系统,反之顺时针旋转坐标系统
//        imageView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        
        //实现以一个已经存在的形变为基准,在x轴方向上平移x单位,在y轴方向上平移y单位
//        let transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
//        imageView.transform = transform.translatedBy(x: 100, y: 100)
        
        //注: 当sx为正值时,会在x轴方向上缩放x倍,反之,则在缩放的基础上沿着竖直线翻转;当sy为正值时,会在y轴方向上缩放y倍,反之,则在缩放的基础上沿着水平线翻转
        imageView.transform = CGAffineTransform(scaleX: -2, y: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

