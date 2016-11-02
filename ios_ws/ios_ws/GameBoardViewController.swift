//
//  GameBoardViewController.swift
//  ios_ws
//
//  Created by Alex on 11/2/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import UIKit

class GameBoardViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title:"Back", style: UIBarButtonItemStyle.plain,target: self, action:#selector(GameBoardViewController.backButtonItemToDismissModal))
    }
    
    override func didReceiveMemoryWarning(){
        
    }
    
    func setNavTitle(newUserName: String){
        self.navigationItem.title = newUserName + "'s Card 24 game"
    }
    
    func backButtonItemToDismissModal(){
        self.dismiss(animated:true)
    }
}
