//
//  GameOverScene.swift
//  SpaceInvaders
//
//  Created by Joben Gohlke on 5/9/17.
//  Copyright © 2017 The Iron Yard. All rights reserved.
//

import UIKit
import SpriteKit

class GameOverScene: SKScene
{
  var contentCreated = false
  
  override func didMove(to view: SKView)
  {
    if !contentCreated
    {
      createContent()
      contentCreated = true
    }
  }
  
  func createContent()
  {
    let tapLabel = SKLabelNode(fontNamed: "Courier")
    tapLabel.fontSize = 50
    tapLabel.fontColor = SKColor.white
    tapLabel.text = "Tap to Play Again"
    tapLabel.position = CGPoint(x: size.width / 2, y: 2 / 2 * size.height)
    addChild(tapLabel)
    
    let gameOverLabel = SKLabelNode(fontNamed: "Courier")
    gameOverLabel.fontSize = 50
    gameOverLabel.fontColor = SKColor.white
    gameOverLabel.text = "Game Over!"
    gameOverLabel.position = CGPoint(x: size.width / 2, y: gameOverLabel.frame.origin.y - gameOverLabel.frame.size.height - 40)
    addChild(gameOverLabel)

    backgroundColor = SKColor.black
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
  {
    let gameScene = GameScene(size: size)
    gameScene.scaleMode = .aspectFill
    view?.presentScene(gameScene, transition: SKTransition.doorsCloseHorizontal(withDuration: 1.0))
  }
}
