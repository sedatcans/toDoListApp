//
//  SecondViewController.swift
//  To Do List
//
//  Created by Sedatcan Sonat on 28.03.2016.
//  Copyright © 2016 Sedatcan Sonat. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var addToListTextField: UITextField!
    
    @IBAction func addToList(sender: AnyObject) {
        toDoList.append(addToListTextField.text!)
        addToListTextField.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textfield : UITextField) -> Bool
    {
        addToListTextField.resignFirstResponder()
        return true
    }

}

