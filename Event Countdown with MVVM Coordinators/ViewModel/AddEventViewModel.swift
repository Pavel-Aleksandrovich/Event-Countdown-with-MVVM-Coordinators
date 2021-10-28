//
//  AddEventViewModel.swift
//  Event Countdown with MVVM Coordinators
//
//  Created by pavel mishanin on 28.10.2021.
//

import Foundation

final class AddEventViewModel {
    var coordinator: AddEventCoordinator?
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
    deinit {
        print("deinit from add event view model")
    }
}
