//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Alicia Windsor on 12/02/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

   
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitDesc: UILabel!
    
    var people : String?
    var tip : String?
    var total : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        splitDesc.text = "Split between \(people!) people, with \(tip!)% tip."
        totalLabel.text = total

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
