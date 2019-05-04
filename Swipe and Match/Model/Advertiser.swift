//
//  Advertiser.swift
//  Swipe and Match
//
//  Created by Victor Mihaita on 04/05/2019.
//

import UIKit

struct Advertiser: ProducesCardViewModel {
    var title: String
    var brandName: String
    var posterPhotoName: String

    func toCardViewModel() -> CardViewModel {
        let attributedText = NSMutableAttributedString(string: title, attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy)])
        attributedText.append(NSAttributedString(string: "\n\(brandName)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .regular)]))
        return CardViewModel(imageNames: [posterPhotoName], attributedString: attributedText, textAlignment: .center)
    }
}
