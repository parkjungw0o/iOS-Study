//
//  ViewController.swift
//  iOS-Study-Homework-1
//
//  Created by 박정우 on 6/17/25.
//

import UIKit

class ViewController: UIViewController {

    private let titleLabel = UILabel()

    private let nameTitleLabel = UILabel()
    private let dateTitleLabel = UILabel()
    private let phoneTitleLabel = UILabel()
    private let placeTitleLabel = UILabel()

    private let nameValueLabel = UILabel()
    private let dateValueLabel = UILabel()
    private let phoneValueLabel = UILabel()
    private let placeValueLabel = UILabel()

    private let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

        setupBackButton()

        titleLabel.text = "부고장에 입력될\n정보를 확인해주세요"
        titleLabel.textColor = .white
        titleLabel.numberOfLines = 0
        titleLabel.font = .boldSystemFont(ofSize: 28)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)

        let infoLabels = [nameTitleLabel, dateTitleLabel, phoneTitleLabel, placeTitleLabel]
        let infoTexts = ["고인 성함", "발인일", "연락처", "영결장소"]

        for (label, text) in zip(infoLabels, infoTexts) {
            label.text = text
            label.textColor = .lightGray
            label.font = .systemFont(ofSize: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(label)
        }

        let valueLabels = [nameValueLabel, dateValueLabel, phoneValueLabel, placeValueLabel]
        let valueTexts = ["서지완", "2025년 6월 17일", "010 1234 5678", "광주광역시 광산구 상무대로 312"]

        for (label, text) in zip(valueLabels, valueTexts) {
            label.text = text
            label.textColor = .white
            label.font = .systemFont(ofSize: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(label)
        }

        button.setTitle("확인", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(button)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),

            nameTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50),
            nameTitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),

            nameValueLabel.centerYAnchor.constraint(equalTo: nameTitleLabel.centerYAnchor),
            nameValueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),

            dateTitleLabel.topAnchor.constraint(equalTo: nameTitleLabel.bottomAnchor, constant: 10),
            dateTitleLabel.leadingAnchor.constraint(equalTo: nameTitleLabel.leadingAnchor),

            dateValueLabel.centerYAnchor.constraint(equalTo: dateTitleLabel.centerYAnchor),
            dateValueLabel.leadingAnchor.constraint(equalTo: nameValueLabel.leadingAnchor),

            phoneTitleLabel.topAnchor.constraint(equalTo: dateTitleLabel.bottomAnchor, constant: 10),
            phoneTitleLabel.leadingAnchor.constraint(equalTo: nameTitleLabel.leadingAnchor),

            phoneValueLabel.centerYAnchor.constraint(equalTo: phoneTitleLabel.centerYAnchor),
            phoneValueLabel.leadingAnchor.constraint(equalTo: nameValueLabel.leadingAnchor),

            placeTitleLabel.topAnchor.constraint(equalTo: phoneTitleLabel.bottomAnchor, constant: 10),
            placeTitleLabel.leadingAnchor.constraint(equalTo: nameTitleLabel.leadingAnchor),

            placeValueLabel.centerYAnchor.constraint(equalTo: placeTitleLabel.centerYAnchor),
            placeValueLabel.leadingAnchor.constraint(equalTo: nameValueLabel.leadingAnchor),

            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: 56)
        ])
    }

    @objc private func didTapButton() {
        let nextVC = NextViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }

    private func setupBackButton() {
        let backButton = UIButton(type: .system)
        backButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        backButton.tintColor = .white
        backButton.setTitleColor(.white, for: .normal)
        backButton.titleLabel?.font = .systemFont(ofSize: 17)
        backButton.addTarget(self, action: #selector(didTapBack), for: .touchUpInside)

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    }

    @objc private func didTapBack() {
        navigationController?.popViewController(animated: true)
    }
}
