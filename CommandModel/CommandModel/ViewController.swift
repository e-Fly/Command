//
//  ViewController.swift
//  CommandModel
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        blockCommandInvoke()
    }
    
    
    func blockCommandInvoke()  {
        let tetrisMachine = TetrisMachine()
        
        let blockManner = BlockCommandInvoke.creatBlockCommandInvoke(tetrisMachine:tetrisMachine)
        
        blockManner.left()
        blockManner.right()
        blockManner.toTransform()
        blockManner.undo()
    }
    
    func genericsCommand() {
        let tetrisMachine = TetrisMachine()
        
        let genericsManner = GenericsCommandManner.creatGenericsCommandManner(tetrisMachine:tetrisMachine)
        
        genericsManner.left()
        genericsManner.right()
        genericsManner.toTransform()
        genericsManner.undo()
    }
    
    func dynamicCommand() {
        let tetrisMachine = TetrisMachine()
        
        let dynamicManner = DynamicCommandManner.creatDynamicCommand(tetrisMachine:tetrisMachine)
        
        dynamicManner.left()
        dynamicManner.right()
        dynamicManner.toTransform()
        dynamicManner.undo()
    }
    
    func TMCommand()  {
        let tetrisMachine = TetrisMachine()
        let leftCommand = LeftCommand(tetrisMachine: tetrisMachine)
        let rightCommand = RightCommand(tetrisMachine: tetrisMachine)
        let transformCommand = TransformCommand(tetrisMachine: tetrisMachine)
        
        let manner = TetrisMachineManner.creatTetrisMachineManner(tetrisMachine: tetrisMachine, leftCommand: leftCommand, rightCommand: rightCommand, transformCommand: transformCommand)
        
        manner.left()
        manner.right()
        manner.toTransform()
        manner.undo()
        
    }

}

