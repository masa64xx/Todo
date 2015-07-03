//
//  TableViewController.swift
//  MyApp
//
//  Created by masanori murakami on 6/6/14.
//  Copyright (c) 2014 ムラカミマサノリ. All rights reserved.
//

import UIKit



@objc(ToDoListTableViewController)
class ToDoListTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource {

    @IBAction func unwindToList(segue:UIStoryboardSegue){
        var source: AddToDoViewController = segue.sourceViewController as! AddToDoViewController
        if var item: ToDoItem = source.toDoItem{
            self.toDoItems.addObject(item)
            self.tableView.reloadData()
            
        }
        
    }
    
    var toDoItems: NSMutableArray = []
   
    
    override func viewDidLoad(){
        super.viewDidLoad()
        loadInitialData()
    }
    
    func loadInitialData(){
        
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.toDoItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIndentifier: NSString = "ListPrototypeCell"
        
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIndentifier as String) as! UITableViewCell
        
        var todoitem: ToDoItem = self.toDoItems.objectAtIndex(indexPath.row) as! ToDoItem
        
        cell.textLabel?.text = todoitem.itemName as String
        
        if todoitem.completed{
            
            cell.accessoryType = .Checkmark
            
        }
            
        else{
            
            cell.accessoryType = .None
            
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView,canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            toDoItems.removeObjectAtIndex(indexPath.row)
                        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    class TodoItemViewController: UIViewController {
        // ...
        
       

   
}
}









