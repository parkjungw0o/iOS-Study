//
//  StartViewController.swift
//  iOS-Study-Homework-1
//
//  Created by 박정우 on 6/17/25.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let moveButton = UIButton()
        moveButton.setTitle("이동하기", for: .normal)
        moveButton.setTitleColor(.white, for: .normal)
        moveButton.backgroundColor = .systemBlue
        moveButton.layer.cornerRadius = 8
        moveButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(moveButton)

        NSLayoutConstraint.activate([
            moveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            moveButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            moveButton.widthAnchor.constraint(equalToConstant: 200),
            moveButton.heightAnchor.constraint(equalToConstant: 50)
        ])

        moveButton.addTarget(self, action: #selector(moveToNext), for: .touchUpInside)
    }

    @objc func moveToNext() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
