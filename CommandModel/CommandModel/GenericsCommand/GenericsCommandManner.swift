//
//  GenericsCommandManner.swift
//  命令模式Swirt
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit

class GenericsCommandManner: NSObject {
    var tetrisMachine : TetrisMachine
    var commands = Array<DynamicCommand>()
    
    init(tetrisMachine : TetrisMachine) {
        self.tetrisMachine = tetrisMachine
    }
    
    class func creatGenericsCommandManner(tetrisMachine : TetrisMachine) -> DynamicCommandManner {
        return DynamicCommandManner(tetrisMachine: tetrisMachine)
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
        
        commands.append(DynamicCommand(tetrisMachine: self.tetrisMachine) { (tetrisMachine) in
            method(tetrisMachine)()
        })
        
    }
    
    func undo() {
        
        if self.commands.count != 0 {
            self.commands.removeLast().execute()
            print(self.commands)
        }
    }
    
    func undoAll() {
        if self.commands.count != 0 {
            self.commands.removeAll()
        }
    }
}
