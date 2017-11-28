//
//  RockingBarController.swift
//  DemoCollection
//
//  Created by 凌斌 on 2017/11/28.
//  Copyright © 2017年 lingbinDemo. All rights reserved.
//

/**
 
 原生：
 oc：
 https://github.com/jayZhangh/ZLRocker
 https://github.com/liushuangddu/LSRockingBar
 https://github.com/mxdhqm/QMJoyStick
 https://github.com/xingjizhao/JoyStickView
 swift：
 https://github.com/Hidebush/YHHandShankView
 
 基于SpriteKit
 oc
 https://github.com/lookdczar/sprite_plane_demo1
 https://github.com/QiaokeZ/HSKJoystick
 
 */

import UIKit

class RockingBarController: UIViewController {

    @IBOutlet weak var ZLRockerView: ZLRocker! //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ZLRockerView.delegate = self
    }

}
extension RockingBarController: ZLRockerDelegate {
    func rockerDidChangeDirection(_ rocker: ZLRocker!) {
        print("direction = \(rocker.direction)")
    }
}
