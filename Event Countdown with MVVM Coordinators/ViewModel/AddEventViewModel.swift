//
//  AddEventViewModel.swift
//  Event Countdown with MVVM Coordinators
//
//  Created by pavel mishanin on 28.10.2021.
//

import UIKit

final class AddEventViewModel {
    
    var onUpdate: () -> Void = {}
    
    enum Cell {
        case titleSubtitle(TitleSubtitleCellViewModel)
        case titleImage
    }
    private(set) var cells: [AddEventViewModel.Cell] = []
    var coordinator: AddEventCoordinator?
    
    func viewDidLoad() {
        cells = [
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Name", subtitle: "", placeholder: "Add a name")),
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Date", subtitle: "", placeholder: "select a date"))
        ]
        onUpdate()
    }
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
    deinit {
        print("deinit from add event view model")
    }
    
    func numberOfRows() -> Int {
        return cells.count
    }
    func cell(for indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }
}






















