//
//  ViewController.swift
//  MobileApp(water_tracking)
//
//  Created by Ankit Lalotra on 9/29/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblAppInstructions: UILabel!
    
    @IBOutlet weak var txtWaterVolume: UITextField!
    
    @IBOutlet weak var gifView: UIImageView!
    
    
    func getCurrentDate() -> String{
        let date = NSDate()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        
        return dateFormatter.string(from: date as Date)
    }
    
    
    
    @IBAction func btnAddWater(_ sender: Any) {
        let date = getCurrentDate()
        print(date)
        let volume = Double(txtWaterVolume.text!)
        print(entries.count)
        
        if entries.contains(where: {$0.date == date}){
            let currentValue = entries.first(where: {$0.date == date})?.volume
            entries.first(where: {$0.date == date})?.volume = currentValue! + volume!
        } else {
            let newEntry = WaterRecord(date: date, volume: volume!)
            entries.append(newEntry)
            print("New Entry was added")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gifView.loadGif(name: "ghipy")
    }


}


