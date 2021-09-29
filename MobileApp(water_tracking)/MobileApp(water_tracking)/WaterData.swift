//
//  WaterData.swift
//  MobileApp(water_tracking)
//
//  Created by Ankit Lalotra on 9/29/21.
//

import Foundation
//data

class WaterRecord{
    var date: String
    var volume: Double
    
    init(date:String, volume: Double){
        self.date = date
        self.volume = volume
    }
}
//record list
var entries: [WaterRecord] = [
    
    ]
//sorting list using buuble sort
func bubbleSort(){
    for i in 0..<entries.count {
        for j in 1..<entries.count - i{
            if entries[j].date < entries[j-1].date{
                let temp:WaterRecord = entries[j-1]
                entries[j-1]=entries[j]
                entries[j]=temp
            }
        }
    }
    entries.reverse()
}

