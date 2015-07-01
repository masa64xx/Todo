//
//  ToDoItem.swift
//  MyApp
//
//  Created by masanori murakami on 6/6/14.
//  Copyright (c) 2014 ムラカミマサノリ. All rights reserved.
//

import Foundation

class ToDoItem: NSObject{

    var itemName: String = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(name:String){
        self.itemName = name
    }
}