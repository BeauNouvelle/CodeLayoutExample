//
//  ViewController.swift
//  CodeLayout
//
//  Created by Beau Nouvelle on 2020-03-27.
//  Copyright © 2020 Beau Nouvelle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        button.setTitle("Next View", for: .normal)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false

        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        button.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
    }

    @objc func nextVC() {
        let colors: [UIColor] = [.red, .blue, .yellow, .green, .white, .cyan, .orange]
        let randomColor = colors.randomElement()

        let nextVC = UIViewController()
        nextVC.view.backgroundColor = randomColor
        navigationController?.pushViewController(nextVC, animated: true)
    }

}

