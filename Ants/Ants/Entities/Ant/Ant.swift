//
//  File.swift
//  Ants
//
//  Created by Nasr-eddine Kargas on 12/07/2015.
//  Copyright (c) 2015 Nasr. All rights reserved.
//

import Foundation
import SpriteKit

class Ant: DrawbleEntity{

    init() {
        super.init(textureName: "walk_1")
        self.addAnimation("walk", animationAtlasName: "ant", firstFrame: 0, lastFrame: 2);
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
    
    func startWalking(){
        self.startAnimationWithName("walk")
    }
}