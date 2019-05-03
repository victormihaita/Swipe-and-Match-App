//
//  ViewController.swift
//  Swipe and Match
//
//  Created by Victor Mihaita on 03/05/2019.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let redView = UIView()
        redView.backgroundColor = .red

        let blueView = UIView()
        blueView.backgroundColor = .blue

        let stackView = UIStackView(arrangedSubviews: [redView, blueView])
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }


}

