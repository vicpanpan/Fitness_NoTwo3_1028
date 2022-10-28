//
//  FinessSelectViewController.swift
//  Fitness_NoTwo
//
//  Created by kuani on 2022/10/21.
//

import UIKit

class FinessSelectViewController: UIViewController{
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    var fitnessSelect:FitnessItem!
    @IBOutlet weak var fitnessItemName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //fitnessItemName.text = fitnessSelect.itemName
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func fitness(_ sender: Any) {
    }
    
    @IBAction func showVedio(_ sender: Any) {
    }
    
    @IBAction func fitnessfitnessIntroduce(_ sender: Any) {
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
