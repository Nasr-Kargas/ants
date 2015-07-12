//
//  GameViewController.swift
//  Ants
//
//  Created by Nasr-eddine Kargas on 12/07/2015.
//  Copyright (c) 2015 Nasr. All rights reserved.
//

import UIKit
import SpriteKit

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size: view.bounds.size)
        let skView = view as SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
