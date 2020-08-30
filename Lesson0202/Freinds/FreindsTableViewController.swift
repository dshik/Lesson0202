//
//  FreindsTableViewController.swift
//  Lesson0202
//
//  Created by Дмитрий Шикунов on 23.08.2020.
//  Copyright © 2020 Дмитрий Шикунов. All rights reserved.
//

import UIKit



class FreindsTableViewController: UITableViewController {
    var freinds = [
        User(userName: "Feruze", userAvatar: "FeruseCompress", userPhoto: "FeruseCompress", userCollectionPhoto: ["FeruseCompress", "Semen", "Inna"]),
        User(userName: "Semen", userAvatar: "SemenCompress", userPhoto: "SemenCompress", userCollectionPhoto: ["FeruseCompress", "Semen", "Inna"]),
        User(userName: "Inna", userAvatar: "Inna", userPhoto: "Inna", userCollectionPhoto: ["FeruseCompress", "Semen", "Inna"])
    ]
    
    
    @IBOutlet var tableFreinds: UITableView!
    
       
    override func viewDidLoad() {
        super.viewDidLoad()

        tableFreinds.dataSource = self
        
        
        
        
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
        return freinds.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
/*        let cell = tableView.dequeueReusableCell(withIdentifier: "avatarFrend", for: indexPath)
*/
        let cell = tableView.dequeueReusableCell(withIdentifier: "avatarFrend", for: indexPath) as! AvatarTableViewCell

        
        /*
         let cell = self.tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
         cell.textLabel?.text = self.data[indexPath.row]
         return cell
         */
        
        
        // cell.textLabel?.text = freinds[indexPath.row]
        cell.freindName.text = freinds[indexPath.row].userName
        cell.freinImageView.image = UIImage(named: freinds[indexPath.row].userAvatar)
        
        // cell.freindAvatarImage.image = UIImage(named: "inna")
        
        
//        cell.avatar.image = UIImage(named: "second_image")

        return cell
    }


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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
