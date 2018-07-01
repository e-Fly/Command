//
//  TetrisMachine.swift
//  命令模式Swirt
//
//  Created by 翟聪聪 on 2018/7/1.
//  Copyright © 2018年 翟聪聪. All rights reserved.
//

import UIKit

class TetrisMachine: NSObject {
    
    func left() {
        print("左移")
    }
    
    func right() {
        print("右移")
    }
    
    func toTransform() {
        print("变形")
    }
}
