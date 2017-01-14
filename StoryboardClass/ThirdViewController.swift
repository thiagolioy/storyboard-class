//
//  ThirdViewController.swift
//  StoryboardClass
//
//  Created by Thiago Lioy on 12/01/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(name)
    }
    
    @IBAction func didClickOnMe(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Second", bundle: nil)
        guard let controller = sb.instantiateViewController(withIdentifier: "AnotherViewController") as? AnotherViewController else {
            return
        }
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
