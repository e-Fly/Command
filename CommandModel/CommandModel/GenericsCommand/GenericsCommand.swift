//
//  GenericsCommand.swift
//  命令模式Swirt
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit

class GenericsCommand<T>: NSObject {
    var tetrisMachine : T
    var block : (T)->Void
    
    
    init(tetrisMachine : T, block: @escaping (T)->Void) {
        self.tetrisMachine = tetrisMachine
        self.block = block
    }
}

extension GenericsCommand : DynamicCommandProtocol {
    func execute() {
        self.block(self.tetrisMachine)
    }
}
