//
//  StudentPaneViewController.swift
//  Math4Kids1
//
//  Created by Shridhar Sukhani on 23/09/17.
//  Copyright © 2017 Shridhar Sukhani. All rights reserved.
//

import UIKit

class StudentPaneViewController: UIViewController {
    
    let targetAssignments = 5
    var numLeft = 5
    
    @IBOutlet weak var numLeft: UILabel!
    @IBOutlet weak var percentage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
