//
//  ViewController.swift
//  Animation
//
//  Created by Zulyar Kurban on 6/19/18.
//  Copyright © 2018 Zulyar Kurban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(white: 1, alpha: 0.2)
        
        
        //Create Label
        let UyghurLable = UILabel()
            UyghurLable.text = "Uyghur"
            UyghurLable.textColor = UIColor(white: 1, alpha: 1)
            UyghurLable.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 400)
            UyghurLable.textAlignment = .center
            UyghurLable.font = UIFont.systemFont(ofSize: 80)
                view.addSubview(UyghurLable)
        
        //Create GradientLayer
        
        let GradientLayer = CAGradientLayer()
            GradientLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
            GradientLayer.locations = [0,0.5,1]
            GradientLayer.frame = UyghurLable.frame
            view.layer.addSublayer(GradientLayer)
        
        //Calculate the angle
        let angle = 45 * CGFloat.pi / 180
        //transform to GradientLayer
            GradientLayer.transform = CATransform3DMakeRotation(angle, 0, 0, 1)
        //make Mask to Label
            UyghurLable.layer.mask = GradientLayer
        
        
        // Animation
        
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
            animation.duration = 2
            animation.fromValue = -view.frame.width
            animation.toValue = view.frame.width
            animation.repeatCount = Float.infinity
        
        //add anamation to GradientLayer
        GradientLayer.add(animation, forKey: "colorTransform")
    }
    
    
    
}

