//
//  ViewController.swift
//  Workout
//
//  Created by Hugo Prinsloo on 2018/07/21.
//  Copyright © 2018 Hugo. All rights reserved.
//

import UIKit
import HealthKit

class ViewController: UIViewController {
    
    let healthStore = HKHealthStore()

    override func viewDidLoad() {
        super.viewDidLoad()

        let allTypes = Set([HKObjectType.workoutType(),
                            HKObjectType.quantityType(forIdentifier: .heartRate)!,
                            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
                            ])
        
        healthStore.requestAuthorization(toShare: allTypes, read: allTypes) { (success, error) in
            // Handle error
        }

    }


}

