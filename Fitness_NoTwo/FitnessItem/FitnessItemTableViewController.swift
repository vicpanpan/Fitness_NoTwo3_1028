//
//  FitnessItemTableViewController.swift
//  Fitness_NoTwo
//
//  Created by vicpan on 2022/10/21.
//

import UIKit

class FitnessItemTableViewController: UITableViewController {
    let fitnessItemInfo = [FitnessItem(itemName:"臀部運動", itemImage: "臀部"),FitnessItem(itemName: "手臂運動", itemImage: "手臂"),FitnessItem(itemName: "腿部運動", itemImage: "腿部")]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fitnessItemInfo.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(FitnessItemTableViewCell.self)", for: indexPath) as! FitnessItemTableViewCell

        let fitnessItem = fitnessItemInfo[indexPath.row]

        cell.itemLabel.text = fitnessItem.itemName
        cell.itemPicture.image = UIImage(named: fitnessItem.itemImage)
        
        return cell
    }
   /*
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        self.performSegue (withIdentifier: "pagel", sender: self)
        
    }
*/
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showItem"{
            if let indexpath = tableView.indexPathForSelectedRow{
                let controller = segue.destination as! FitnessSelectTableViewController
                controller.fitnessSelect = fitnessItemInfo[indexpath.row]
            }
        }
    }
    

}
