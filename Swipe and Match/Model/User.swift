//
//  User.swift
//  Swipe and Match
//
//  Created by Victor Mihaita on 04/05/2019.
//

import Foundation
import UIKit

struct User {
    var name: String
    var age: Int
    var profession: String
    var imageName: String

    func toCardViewModel() -> CardViewModel {
        let attributedText = NSMutableAttributedString(string: name, attributes: [.font: UIFont.systemFont(ofSize: 32, weight: .heavy)])
        attributedText.append(NSAttributedString(string: " \(age)", attributes: [.font: UIFont.systemFont(ofSize: 24, weight: .regular)]))
        attributedText.append(NSAttributedString(string: "\n\(profession)", attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .regular)]))

        return CardViewModel(imageName: imageName, attributedString: attributedText, textAlignment: .left)
    }
}
