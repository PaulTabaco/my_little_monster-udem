//
//  ViewController.swift
//  mylittlemonster
//
//  Created by paul on 26.12.15.
//  Copyright © 2015 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var monsterImg: MonsterImg!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodImg.dropTarget = monsterImg
        heartImg.dropTarget = monsterImg

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "itemDroppedOnCharacter:", name: "onTargetDropped", object: nil)
    }
    
    
    func itemDroppedOnCharacter (notif: AnyObject) {
        print("AAAAA")
    }
    
}

