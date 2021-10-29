//
//  TitleSubtitleCellViewModel.swift
//  Event Countdown with MVVM Coordinators
//
//  Created by pavel mishanin on 29.10.2021.
//

import UIKit

final class TitleSubtitleCellViewModel {
    let title: String
    private(set) var subtitle: String
    let placeholder: String
    
    init(title: String, subtitle: String, placeholder: String) {
        self.title = title
        self.subtitle = subtitle
        self.placeholder = placeholder
    }
}
