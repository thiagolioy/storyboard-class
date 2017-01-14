//
//  FirstViewController.swift
//  StoryboardClass
//
//  Created by Thiago Lioy on 12/01/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClickWhatever(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let controller = sb.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else {
            return
        }
        
        controller.name = "Whatever fancy"
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
}

