//
//  TaskManager.swift
//  My Task List
//
//  Created by ShawnCCHuang on 2014-07-06.
//  Copyright (c) 2014 ShawnCCHuang. All rights reserved.
//

import UIKit

var taskMgr:TaskManager = TaskManager()

struct task{
    var name="Un-Named"
    var desc="Un-Described"
}

class TaskManager: NSObject {

    var tasks=task[]()
    
    func addTask(name:String,desc:String){
        tasks.append(task(name: name, desc: desc))

    }
}
