//
//  ScheduleInterfaceController.swift
//  FlightDetailsWatchOS WatchKit Extension
//
//  Created by dinesh danda on 7/17/19.
//  Copyright © 2019 Dinesh Danda. All rights reserved.
//

import WatchKit
import Foundation


class ScheduleInterfaceController: WKInterfaceController {

    @IBOutlet weak var flightsListingTable: WKInterfaceTable!
    var flights = Flight.allFlights()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        func awake(withContext context: Any?) {
            super.awake(withContext: context)
            flightsListingTable.setNumberOfRows(flights.count, withRowType: "FlightRow")
        }
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
