//
//  ViewController.swift
//  mylittlemonster
//
//  Created by paul on 26.12.15.
//  Copyright © 2015 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var monsterImg: UIImageView!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        var imgArray = [UIImage]()
        
        for var i = 1; i <= 4; i++ {
            let img = UIImage (named: "idle\(i).png")
            imgArray.append(img!)
        }
            
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
        
    }
    
    
   
    
    
}

