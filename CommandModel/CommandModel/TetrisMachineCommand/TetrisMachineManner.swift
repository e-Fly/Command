//
//  TetrisMachineManner.swift
//  命令模式Swirt
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit

class TetrisMachineManner: NSObject {
    
   private var tetrisMachine : TetrisMachine
   private var leftCommand : LeftCommand
   private var rightCommand : RightCommand
   private var transformCommand : TransformCommand
    private var command = Array<Any>()
    

    init(tetrisMachine : TetrisMachine, leftCommand: LeftCommand, rightCommand : RightCommand, transformCommand :TransformCommand) {
        self.tetrisMachine = tetrisMachine
        self.leftCommand = leftCommand
        self.rightCommand = rightCommand
        self.transformCommand = transformCommand
    }
    
    class func creatTetrisMachineManner(tetrisMachine : TetrisMachine, leftCommand: LeftCommand, rightCommand : RightCommand, transformCommand :TransformCommand) -> TetrisMachineManner {
        return TetrisMachineManner(tetrisMachine: tetrisMachine, leftCommand: leftCommand, rightCommand: rightCommand, transformCommand: transformCommand)
    }
    
    func left() {
        self.command.append(leftCommand)
        self.leftCommand.execute();
    }
    
    func right() {
        self.command.append(rightCommand)
        self.rightCommand.execute()
    }
    
    func toTransform() {
        self.command.append(transformCommand)
        self.transformCommand.execute()
    }
    
    func undo() {
        
        if ((self.command.count) != nil){
            self.command.removeLast()
            print(self.command)   
        }
    }
    
    func undoAll() {
        if ((self.command.count) != nil) {
            self.command.removeAll()
        }
    }
}






