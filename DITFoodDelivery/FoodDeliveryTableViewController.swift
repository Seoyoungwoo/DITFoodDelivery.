//
//  FoodDeliveryTableViewController.swift
//  DITFoodDelivery
//
//  Created by D7702_10 on 2018. 5. 17..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class FoodDeliveryTableViewController: UITableViewController {

    var foodStoreNames = ["늘해랑", "번개반점", "아딸", "왕짜장", "토마토 도시락", "홍콩반점"]
    var foodStoreImages = ["01", "02", "03", "04", "05", "06"]
    var foodStoreAddress = ["부산광역시 부산진구 중앙대로928번길 12", "부산광역시 부산진구 양지로 34", "부산광역시 부산진구 중앙대로909번길 4", "부산광역시 부산진구 진남로 505", "부산광역시 부산진구 양지로 28", "부산광역시 부산진구 중앙대로 902"]
    var foodStoreType = ["돼지국밥", "중화요리", "분식집", "중화요리", "도시락", "중화요리"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //
        self.title = "DIT 배달통"
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodStoreNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath) as! DetailTableViewCell
        cell.detailaddressLabel.text = foodStoreAddress[indexPath.row]
        cell.detailNameLabel.text = foodStoreNames[indexPath.row]
        cell.detailTypeLabel.text = foodStoreType[indexPath.row]
        cell.detailImageView2.image = UIImage(named: foodStoreImages[indexPath.row])
        return cell
    } 
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        if segue.identifier == "detail" {
            if let indexPath =  tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! detailViewController
                // 이름 넘기기
                destinationController.title = foodStoreNames[indexPath.row]
                // 이미지 넘기기
                destinationController.cellName = foodStoreNames[indexPath.row]
                destinationController.cellAddress = foodStoreAddress[indexPath.row]
                destinationController.cellImage = foodStoreImages[indexPath.row]
                destinationController.cellType = foodStoreType[indexPath.row]
            }
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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



}
