//
//  HomeBottomControllsStackView.swift
//  Swipe and Match
//
//  Created by Victor Mihaita on 04/05/2019.
//

import UIKit

class HomeBottomControllsStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        axis = .horizontal
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 80).isActive = true

        let subviews = [#imageLiteral(resourceName: "3 1.png"),#imageLiteral(resourceName: "3 2.png"),#imageLiteral(resourceName: "3 3.png"),#imageLiteral(resourceName: "3 4.png"),#imageLiteral(resourceName: "3 5.png")].map { image -> UIView in
            let b = UIButton(type: .system)
            b.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
            return b
        }

        subviews.forEach { addArrangedSubview($0) }
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
