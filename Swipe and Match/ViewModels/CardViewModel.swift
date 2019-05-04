//
//  CardViewModel.swift
//  Swipe and Match
//
//  Created by Victor Mihaita on 04/05/2019.
//

import UIKit

protocol ProducesCardViewModel {
    func toCardViewModel() -> CardViewModel
}

struct CardViewModel {
    let imageNames: [String]
    let attributedString: NSAttributedString
    let textAlignment: NSTextAlignment
}
