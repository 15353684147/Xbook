//
//  GeneralFactory.swift
//  Xbook
//
//  Created by 快邦 on 2017/9/21.
//  Copyright © 2017年 快邦. All rights reserved.
//

import UIKit

class GeneralFactory: NSObject {
    
    
    
    static func addTitleWithTile(target:UIViewController,title1:String = "关闭",title2:String = "确认"){
        let btn1 = UIButton(frame:CGRect(x:10,y:20,width:40,height:20))
        btn1.setTitle(title1, for: .normal)
        btn1.contentHorizontalAlignment = .left
        btn1.setTitleColor(#colorLiteral(red: 0.9215686275, green: 0.4470588235, blue: 0.462745098, alpha: 1), for: .normal)
        btn1.titleLabel?.font = UIFont(name:MYFONT,size:15)
        target.view.addSubview(btn1)
        
        let btn2 = UIButton(frame:CGRect(x:SCREEN_WIDTH-50,y:20,width:40,height:20))
        btn2.setTitle(title2, for: .normal)
        btn2.contentHorizontalAlignment = .right
        btn2.setTitleColor(#colorLiteral(red: 0.9215686275, green: 0.4470588235, blue: 0.462745098, alpha: 1), for: .normal)
        btn2.titleLabel?.font = UIFont(name:MYFONT,size:15)
        target.view.addSubview(btn2)
        
        btn1.addTarget(target, action:#selector(Stream.close), for: .touchUpInside)
         btn1.addTarget(target, action:Selector(("sure")),for: .touchUpInside)
        

    }

}
