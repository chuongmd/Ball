//
//  ViewController.swift
//  Ball
//
//  Created by Mai Dinh Chuong on 1/23/19.
//  Copyright © 2019 Mai Dinh Chuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    private var ballView = UIImageView()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func setupUI()
    {
        
        ballView.image = #imageLiteral(resourceName: "ball")
        ballView.center = view.center
        
        self.view.addSubview(ballView)
        
    }
    
    
}

