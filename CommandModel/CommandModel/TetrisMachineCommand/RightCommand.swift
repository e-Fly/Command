//
//  RightCommand.swift
//  命令模式Swirt
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit

class RightCommand: NSObject {
    var tetrisMachine : TetrisMachine
    
    init(tetrisMachine : TetrisMachine ) {
        self.tetrisMachine = tetrisMachine;
    }
}

extension RightCommand : TMCommandProtocol {
    func execute() {
        self.tetrisMachine.right()
    }
}

