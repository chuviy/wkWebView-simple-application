//
//  LaunchScreenViewController.swift
//  Web-view
//
//  Created by Aleksey Antokhin on 23.11.2020.
//  Copyright © 2020 Aleksey Antokhin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var timer = Timer()
    let timeInterval = 5.0
   
    override func viewDidLoad() {
        timer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(nextView), userInfo: nil, repeats: false)

        
        
        super.viewDidLoad()

    }
    
    @objc func nextView() {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        viewController.modalPresentationStyle = .overCurrentContext
        present(viewController, animated: true, completion: nil)


      }

    
}
