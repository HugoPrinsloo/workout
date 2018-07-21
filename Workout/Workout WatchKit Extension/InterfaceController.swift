//
//  InterfaceController.swift
//  Workout WatchKit Extension
//
//  Created by Hugo Prinsloo on 2018/07/21.
//  Copyright © 2018 Hugo. All rights reserved.
//

import WatchKit
import Foundation
import HealthKit

class WorkoutStartView: WKInterfaceController {
    
    let healthStore = HKHealthStore()
    
    override func didAppear() {
        super.didAppear()
        
        let typesToShare: Set = [
            HKQuantityType.workoutType()
        ]
        
        let typesToRead: Set = [
            HKQuantityType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKQuantityType.quantityType(forIdentifier: .heartRate)!,
        ]
        
        
        healthStore.requestAuthorization(toShare: typesToShare, read: typesToRead) { (success, error) in
            // Handle error
        }
    }
}

class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
