//
//  SecondViewController.swift
//  To DO
//
//  Created by 李宝明 on 16/8/23.
//  Copyright © 2016年 李宝明. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var textField: UITextField!
    @IBAction func addItem(_ sender: AnyObject) {
        
        var itemArray: [String]
        
        let itemsObj = UserDefaults.standard.object(forKey: "items")
        
        if let itemArraytemp = itemsObj as? [String] {
            
            itemArray = itemArraytemp
            
            if let item = textField.text {
                itemArray.append(item)
            }
        } else {
            itemArray = [textField.text!]
            
        }
        
        UserDefaults.standard.set(itemArray, forKey: "items")
        textField.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    


}

