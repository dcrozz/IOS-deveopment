//
//  ViewController.swift
//  ios_ws
//
//  Created by Alex on 11/2/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // print("enter prepare for seque ...")
        
        if (segue.identifier == "loginToGameBoardSeg"){
            let nav = segue.destination as! UINavigationController
            let vc = nav.topViewController as! GameBoardViewController
            vc.setNavTitle(newUserName: userNameTF.text!)
        }
    }
}

