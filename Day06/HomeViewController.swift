//
//  HomeViewController.swift
//  Day06
//
//  Created by sunbeam on 04/01/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var username: UILabel!
    
    var emailN:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        username.text = emailN
        
    }
    

   

}
