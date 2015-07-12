//
//  GameScene.swift
//  Ants
//
//  Created by Nasr-eddine Kargas on 12/07/2015.
//  Copyright (c) 2015 Nasr. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let anAnt = Ant()
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.whiteColor()

        let location = CGPointMake(self.frame.width/2,self.frame.height/2)
        anAnt.startWalking()
        anAnt.position = location
        
        self.addChild(anAnt)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
//        for touch: AnyObject in touches {
//            let location = touch.locationInNode(self)
//            
//            let sprite = SKSpriteNode(imageNamed:"Spaceship")
//            
//            sprite.xScale = 0.5
//            sprite.yScale = 0.5
//            sprite.position = location
//            
//            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
//            
//            sprite.runAction(SKAction.repeatActionForever(action))
//            
//            self.addChild(sprite)
//        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        anAnt.moveWithDirectionVector(0, y: 1)
    }
}
