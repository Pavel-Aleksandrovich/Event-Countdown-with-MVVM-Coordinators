//
//  EventListViewModel.swift
//  Event Countdown with MVVM Coordinators
//
//  Created by pavel mishanin on 28.10.2021.
//

import Foundation

final class EventListViewModel {
    
    let title = "Events"
    var coordonator: EventListCoordinator?
    
    func tappedAddEvent() {
        coordonator?.startAddEvent()
    }
    
}
