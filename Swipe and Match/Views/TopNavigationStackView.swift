//
//  TopNavigationStackView.swift
//  Swipe and Match
//
//  Created by Victor Mihaita on 04/05/2019.
//

import UIKit

class TopNavigationStackView: UIStackView {

    let settingsButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let fireImageView = UIImageView(image: #imageLiteral(resourceName: "3 7"))

    override init(frame: CGRect) {
        super.init(frame: frame)

        axis = .horizontal
        distribution = .equalCentering
        heightAnchor.constraint(equalToConstant: 70).isActive = true

        fireImageView.contentMode = .scaleAspectFit

        settingsButton.setImage(#imageLiteral(resourceName: "3 6").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "3 8").withRenderingMode(.alwaysOriginal), for: .normal)

        [settingsButton, UIView(), fireImageView, UIView(), messageButton].forEach { addArrangedSubview($0) }

        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 14, bottom: 0, right: 14)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
