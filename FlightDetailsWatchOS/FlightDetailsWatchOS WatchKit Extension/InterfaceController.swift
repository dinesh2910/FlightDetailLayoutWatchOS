//
//  InterfaceController.swift
//  FlightDetailsWatchOS WatchKit Extension
//
//  Created by dinesh danda on 7/17/19.
//  Copyright © 2019 Dinesh Danda. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var flightLogoImage: WKInterfaceImage!
    @IBOutlet weak var routeLabel: WKInterfaceLabel!
    @IBOutlet weak var flightNameLabel: WKInterfaceLabel!
    @IBOutlet weak var timeLabel: WKInterfaceLabel!
    @IBOutlet weak var seatLabel: WKInterfaceLabel!
    @IBOutlet weak var gateLabel: WKInterfaceLabel!
    @IBOutlet weak var flightStatusLabel: WKInterfaceLabel!
    
    @IBOutlet weak var boardingLabel: WKInterfaceLabel!
    
    var flight: Flight? {
        didSet {
            guard let flight = flight else { return }
            flightNameLabel.setText("Flight \(flight.shortNumber)")
            routeLabel.setText(flight.route)
            boardingLabel.setText("\(flight.number) Boards")
            timeLabel.setText(flight.boardsAt)
            if flight.onSchedule {
                flightStatusLabel.setText("On Time")
            } else {
                flightStatusLabel.setText("Delayed")
                flightStatusLabel.setTextColor(.red)
            }
            gateLabel.setText("Gate \(flight.gate)")
            seatLabel.setText("Seat \(flight.seat)")
        }
    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
          flight = Flight.allFlights().first
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
