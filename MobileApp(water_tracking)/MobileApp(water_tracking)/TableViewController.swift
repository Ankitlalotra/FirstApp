//
//  TableViewController.swift
//  MobileApp(water_tracking)
//
//  Created by Ankit Lalotra on 9/29/21.
//

import UIKit


    class TableViewController: UITableViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
        }
        override func viewWillAppear(_ animated: Bool) {
            //reload sort
            bubbleSort()
            
            DispatchQueue.main.async {
                self.tableView.reloadData()         }
            }
        // MARK: - Table view data source

        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return entries.count
        }

      
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "WaterCell", for: indexPath)

            // Configure the cell...
            let myData = entries[indexPath.row]
            
            cell.textLabel?.text = String(myData.volume) + "mL"
            cell.detailTextLabel?.text = myData.date
            return cell
        }
        

    }
