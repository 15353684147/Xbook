//
//  PushViewController.swift
//  Xbook
//
//  Created by 快邦 on 2017/9/21.
//  Copyright © 2017年 快邦. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.white
        
        self.setNavigationBar()

        // Do any additional setup after loading the view.
    }

    func setNavigationBar(){
        let navigationView = UIView(frame:CGRect(x:0,y:-20,width:SCREEN_WIDTH,height:65))
        navigationView.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.addSubview(navigationView)
        
        let addBookBtn = UIButton(frame:CGRect(x:20,y:20,width:SCREEN_WIDTH,height:45))
        addBookBtn.setImage(UIImage(named:"plus circle"), for: .normal)
        addBookBtn.setTitleColor(UIColor.black, for: .normal)
        addBookBtn.setTitle("   新建书评", for: .normal)
        addBookBtn.titleLabel?.font = UIFont(name:MYFONT,size:15)
        addBookBtn.contentHorizontalAlignment = .left
        addBookBtn.addTarget(self, action:#selector(PushViewController.pushNewBook), for: .touchUpInside)
        navigationView.addSubview(addBookBtn)
        
    }
    
    func pushNewBook() {
        let vc = pushNewBookViewController()
        
        GeneralFactory.addTitleWithTile(target: vc, title1: "关闭", title2: "发布")
        self.present(vc, animated: true) {
            
            
        }
    }
}
