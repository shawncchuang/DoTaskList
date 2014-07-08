//
//  SecondViewController.swift
//  My Task List
//
//  Created by ShawnCCHuang on 2014-07-06.
//  Copyright (c) 2014 ShawnCCHuang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textTask:UITextField
    @IBOutlet var textDesc:UITextField
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender:UIButton){
       // println("the button was clicked")
        
        taskMgr.addTask(textTask.text, desc: textDesc.text)
        self.view.endEditing(true)
        textTask.text=""
        textDesc.text=""
        
        self.tabBarController.selectedIndex = 0
        
    }
    
    
    //IOS Touch function
    override  func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        
        self.view.endEditing(true)
        
    }
    
    //UITextFiled Delegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        
        textField.resignFirstResponder()
        return true
    }

}

