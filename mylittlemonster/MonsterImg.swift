//
//  monsterImg.swift
//  mylittlemonster
//
//  Created by paul on 27.12.15.
//  Copyright © 2015 Training. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
    
    func playIdleAnimation () {
        
        self.image = UIImage(named: "idle1.png")
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        let max_frames = 100
        for var i = 1; i <= max_frames; i++ {
 //       for var i = 1; i <= 4; i++ {
            if let img = UIImage (named: "idle\(i).png") {
                imgArray.append(img)
            } else {
                i = max_frames+1
            }
            
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeathAnimation () {
        
        self.image = UIImage(named: "dead5.png")
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        let max_frames = 100
        for var i = 1; i <= max_frames; i++ {
            if let img = UIImage (named: "dead\(i).png") {
                imgArray.append(img)
            } else {
                i = max_frames+1
            }
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
        
    }
    
}
