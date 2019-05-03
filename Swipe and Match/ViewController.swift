//
//  ViewController.swift
//  Swipe and Match
//
//  Created by Victor Mihaita on 03/05/2019.
//

import UIKit

class ViewController: UIViewController {

    let topStackView = TopNavigationStackView()
    let buttonsStackView = HomeBottomControllsStackView()
    let blueView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        blueView.backgroundColor = .blue
        setupLayout()
    }

    // MARK:- Fileprivate

    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonsStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }

}

