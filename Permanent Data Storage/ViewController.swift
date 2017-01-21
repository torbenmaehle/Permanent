//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Torben Mæhle on 21/01/2017.
//  Copyright © 2017 Torben Mæhle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UserDefaults.standard.set("Torben Mæhle - mr. cool -yes", forKey: "name")
        
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let name = nameObject as? String {
        
              print(name as Any)
        }
        
        let arr = [1,2,3,4,5]

        UserDefaults.standard.set(arr, forKey: "array")
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? Array<Any> {
        
            print (array)
        }
        
      

    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

