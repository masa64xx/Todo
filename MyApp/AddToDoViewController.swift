//
//  ViewController.swift
//  MyApp
//
//  Created by masanori murakami on 6/6/14.
//  Copyright (c) 2014 ムラカミマサノリ. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    

    @IBOutlet var textfield : UITextField!
    @IBOutlet var doneButton : UIBarButtonItem!
    @IBOutlet weak var textbar: UITextField!
    @IBOutlet var ToDoItem
    
    var toDoItem: ToDoItem? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let ToDoItem = task {
            textbar.text = ToDoItem.item
        }
     func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

     func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender as? NSObject != self.doneButton{
             func donebuttun(sender: UIBarButtonItem) {
                if textbar != nil {
                    editTask()
                } else {
                    createTask()
                }
                navigationController!.popViewControllerAnimated(true)
            }
            
            func createTask() {
                let newTask: ToDoItem = ToDoItem.MR_createEntity() as! ToDoItem
                newTask.item = textField.text
                newTask.managedObjectContext!.MR_saveToPersistentStoreAndWait()
            }
            
            func editTask() {
                task.item = textbar.text
                task.managedObjectContext!.MR_saveToPersistentStoreAndWait()
            }
            navigationController!.popViewControllerAnimated(true)
        }
    }
            
            func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
}
}

