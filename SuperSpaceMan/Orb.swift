//
//  Orb.swift
//  SuperSpaceMan
//
//  Created by p14822 on 2018/1/30.
//  Copyright © 2018年 p14822. All rights reserved.
//

import Foundation
import SpriteKit
class Orb: SKSpriteNode {
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    init(textureAtlas: SKTextureAtlas) {
        let texture = textureAtlas.textureNamed("PowerUp")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
        physicsBody = SKPhysicsBody(circleOfRadius: self.size.width / 2)
        physicsBody?.isDynamic = false
        physicsBody?.categoryBitMask = CollisionCategoryPowerUpOrbs
        physicsBody?.collisionBitMask = 0
        name = "POWER_UP_ORB"
    }
}
