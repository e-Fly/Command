//
//  TransformCommand.swift
//  命令模式Swirt
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit

class TransformCommand: NSObject {
    var tetrisMachine : TetrisMachine
    
    init(tetrisMachine : TetrisMachine ) {
        self.tetrisMachine = tetrisMachine;
    }
}

extension TransformCommand : TMCommandProtocol {
    func execute() {
        self.tetrisMachine.toTransform()
    }
}
