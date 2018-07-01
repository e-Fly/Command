//
//  DynamicCommand.swift
//  命令模式Swirt
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit

class DynamicCommand: NSObject {
    
    private var tetrisMachine : TetrisMachine
    private var block : ((TetrisMachine) -> Void)
    
    
    init(tetrisMachine : TetrisMachine, block: @escaping ((TetrisMachine) -> Void)) {
        self.tetrisMachine = tetrisMachine
        self.block = block
    }
    
}

extension DynamicCommand : DynamicCommandProtocol {
    func execute() {
        self.block(self.tetrisMachine)
    }
}


