//
//  RankViewController.swift
//  Xbook
//
//  Created by 快邦 on 2017/9/21.
//  Copyright © 2017年 快邦. All rights reserved.
//

import UIKit

class RankViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel(frame:CGRect(x:0,y:0,width:300,height:20))
        label.center = self.view.center
        label.font = UIFont(name:MYFONT,size:18)
        label.text = "中国歌才是最屌的"
        label.textColor = UIColor.brown
        self.view.addSubview(label)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
