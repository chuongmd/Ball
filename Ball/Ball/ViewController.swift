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
    
    var ball = UIImageView()
    var radians = CGFloat()
    var ballRadious = CGFloat()
    var forward = true
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupUI()
        Timer.scheduledTimer(timeInterval: 1/10, target: self, selector: #selector(rollBall), userInfo: nil, repeats: true)
    }
    
    private func setupUI()
    {
        let mainViewSize = self.view.bounds.size
        ball = UIImageView(image: UIImage(named: "ball.png"))
        ballRadious = 32.0
        ball.center = CGPoint(x: ballRadious, y: mainViewSize.height * 0.5)
        self.view.addSubview(ball)
    }
    
    @objc private func rollBall()
    {
        if (forward)
        {
            ball.transform = ball.transform.rotated(by: -1)
            ball.center.x += 32
            if ball.center.x >= view.bounds.size.width
            {
                forward = false
            }
        } else
        {
            ball.transform = ball.transform.rotated(by: 1)
            ball.center.x -= 32
            if ball.center.x <= 32
            {
                forward = true
            }
        }
    }
}

