//
//  pushNewBookViewController.swift
//  Xbook
//
//  Created by 快邦 on 2017/9/21.
//  Copyright © 2017年 快邦. All rights reserved.
//

import UIKit

class pushNewBookViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }
    func close(){
        self.dismiss(animated: true) { 
            
            
        }
    }
    
    func sure() {
        
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
