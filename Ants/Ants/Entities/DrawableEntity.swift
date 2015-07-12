//
//  DrawableEntity.swift
//  Ants
//
//  Created by Nasr-eddine Kargas on 12/07/2015.
//  Copyright (c) 2015 Nasr. All rights reserved.
//

import Foundation
import SpriteKit

class DrawbleEntity: SKSpriteNode{
    var animations: Dictionary<String,Array<SKTexture>>
    
    init(textureName: String){
        animations = [String:Array<SKTexture>]()
        let texture = SKTexture(imageNamed: textureName)
        super.init(texture: texture, color: nil, size: texture.size())
    }

    required init?(coder aDecoder: NSCoder) {
        animations = [String:Array<SKTexture>]()
        super.init(coder: aDecoder)
    }
    
    override init(texture: SKTexture!, color: UIColor!, size: CGSize) {
        animations = [String:Array<SKTexture>]()
        super.init(texture: texture, color: color, size: size)
    }
    
    func addAnimation(animationName: String, animationAtlasName: String, firstFrame: Int, lastFrame: Int){
        let textureAtlas = SKTextureAtlas(named: animationAtlasName)
        //expand the atlas into memory
        var animationAray = Array<SKTexture>()

        var i = firstFrame
        
        while i <= lastFrame{
            let textureName = "\(animationName)_\(i)"
            animationAray.append(textureAtlas.textureNamed(textureName))
            i++
        }
        
        animations.updateValue(animationAray, forKey: animationName)
        //open up the texture atlas and add animation frames
    }
    
    func removeAnimationWithName(animationName: String){
        animations.removeValueForKey(animationName)
    }
    
    func startAnimationWithName(animationName: String){
        var animationFrames = animations[animationName]
        if((animationFrames) != nil){
            let animateAction = SKAction.animateWithTextures(animationFrames!, timePerFrame: 0.1)
            let group = SKAction.group([animateAction]);
            let repeatAction = SKAction.repeatActionForever(group);
            self.runAction(repeatAction);
        }
    }
}