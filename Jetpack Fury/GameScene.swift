//
//  GameScene.swift
//  Jetpack Fury
//
//  Created by Bennett Stern on 4/17/24.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    var character = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        physicsWorld.contactDelegate = self
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    func resetGame() {
        createCharacter()
    }
    func createCharacter() {
        character.removeFromParent()
        character = SKSpriteNode ()
        character.position = CGPoint(x: frame.minX, y: frame.midY)
        character.name = "Normal Jetpack"
        
        character.physicsBody = SKPhysicsBody(circleOfRadius: 10)
        character.physicsBody?.isDynamic = true
        character.physicsBody?.usesPreciseCollisionDetection = true
        character.physicsBody?.friction = 0
        character.physicsBody?.affectedByGravity = true
        character.physicsBody?.restitution = 1
        character.physicsBody?.linearDamping = 0
        character.physicsBody?.contactTestBitMask = (character.physicsBody?.collisionBitMask)!
        addChild(character)
}
    
}


