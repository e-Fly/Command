//
//  BlockCommandInvoke.swift
//  命令模式Swirt
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit

class BlockCommandInvoke: NSObject {
    private var tetrisMachine : TetrisMachine
    
    
    typealias commandBlock = (TetrisMachine) -> Void
    
    private var commands = Array<commandBlock>()
    
    private var queue = DispatchQueue(label: "command")
    
    
    init(tetrisMachine : TetrisMachine) {
        self.tetrisMachine = tetrisMachine
    }
    
    class func creatBlockCommandInvoke(tetrisMachine : TetrisMachine) -> BlockCommandInvoke {
        return BlockCommandInvoke(tetrisMachine: tetrisMachine)
    }
    
    func left() {
        print(TetrisMachine.left)
        addCommand(method: TetrisMachine.left)
        self.tetrisMachine.left()
    }
    
    func right() {
        addCommand(method: TetrisMachine.right)
        self.tetrisMachine.right()
    }
    
    func toTransform() {
        addCommand(method: TetrisMachine.toTransform)
        self.tetrisMachine.toTransform()
    }
    
    
    private func addCommand(method : @escaping (TetrisMachine)->()->Void) {
        self.queue.sync {
            commands.append({ (tm) in
                method(tm)()
            })
        }
        
        
    }
    
    func undo() {
        
        if self.commands.count != 0 {
            self.commands.removeLast()(self.tetrisMachine)
            print(self.commands)
        }
    }
    
    func undoAll() {
        if self.commands.count != 0 {
            self.commands.removeAll()
        }
    }
}
