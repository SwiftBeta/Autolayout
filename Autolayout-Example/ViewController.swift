//
//  ViewController.swift
//  Autolayout-Example
//
//  Created by Home on 25/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    // 1
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "SwiftBeta"
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 100
        return imageView
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .magenta
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2
        view.addSubview(nameLabel)
        view.addSubview(imageView)
        view.addSubview(containerView)
        
        // 3
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.centerXAnchor.constraint(equalTo: nameLabel.centerXAnchor),
            imageView.bottomAnchor.constraint(equalTo: nameLabel.topAnchor, constant: -16),
            
            containerView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 32),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
//        nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

