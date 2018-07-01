//
//  WrapperCommand.swift
//  命令模式Swirt
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit
//复合命令
class WrapperCommand: NSObject {
    var commands : Array<DynamicCommandProtocol>
    
    init(commands : Array<DynamicCommandProtocol>) {
        self.commands = commands
    }
    
}

extension WrapperCommand : DynamicCommandProtocol {
    func execute() {
        for command in commands {
            command.execute()
        }
    }
}



