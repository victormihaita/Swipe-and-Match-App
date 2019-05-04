//
//  HomeViewController.swift
//  Swipe and Match
//
//  Created by Victor Mihaita on 03/05/2019.
//

import UIKit

class HomeViewController: UIViewController {

    let topStackView = TopNavigationStackView()
    let buttonsStackView = HomeBottomControllsStackView()
    let cardsDeckView = UIView()

    let cardViewModels: [CardViewModel] = {
        return [
            Advertiser(title: "We got a new design!", brandName: "Slack", posterPhotoName: "advertiser_poster"),
            User(name: "Kelly", age: 23, profession: "Music DJ", imageName: "lady5c"),
            User(name: "Jane", age: 18, profession: "Teacher", imageName: "lady4c"),
            User(name: "Jane", age: 18, profession: "Teacher", imageName: "lady4c"),
            User(name: "Jane", age: 18, profession: "Teacher", imageName: "lady4c")
            ].map { ($0 as! ProducesCardViewModel).toCardViewModel() }
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupDummyCards()
    }

    fileprivate func setupLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView, cardsDeckView, buttonsStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
        overallStackView.isLayoutMarginsRelativeArrangement = true
        overallStackView.layoutMargins = .init(top: 0, left: 8, bottom: 0, right: 8)
        overallStackView.bringSubviewToFront(cardsDeckView)
    }

    fileprivate func setupDummyCards() {
        cardViewModels.forEach { cardVM in
            let cardView = CardView()
            cardView.cardViewModel = cardVM
            cardsDeckView.addSubview(cardView)
            cardView.fillSuperview()
        }
    }

}

