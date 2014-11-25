//
//  ViewController.swift
//  HelloSwift
//
//  Created by João Gabriel Soares Esteves on 19/10/14.
//  Copyright (c) 2014 JoaoTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var workingView: UIView!
    
    @IBAction func hideView(sender: AnyObject) {
        workingView.alpha = 0;
    }
    
    @IBAction func showView(sender: AnyObject) {
        workingView.alpha = 1;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

