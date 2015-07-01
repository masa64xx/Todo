//
//  detailTodo.swift
//  ToDoListApp
//
//  Created by 村上 雅典 on 2015/07/01.
//  Copyright (c) 2015年 ムラカミマサノリ. All rights reserved.
//

import UIKit

class detailTodo: UIViewController {
    
    @IBOutlet weak var paramLabel: UILabel!
    
    //パラメータ受取用プロパティ
    var param:String = "init param"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //パラメータのバインド
        self.paramLabel.text = self.param
    }
}