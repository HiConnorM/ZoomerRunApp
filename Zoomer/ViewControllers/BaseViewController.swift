//
//  BaseViewController.swift
//  Zoomer
//
//  Created by Connor Morgan on 10/5/22.
//

import UIKit

class BaseViewController: UIViewController {
    
    private lazy var backgroundLayer: GradientView = {
        let v = GradientView(colors: [UIColor.systemRed, UIColor.systemYellow, UIColor.white, UIColor.white,])
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(backgroundLayer)
    }
    
    private func setupConstraints() {
        // background layer
        NSLayoutConstraint.activate([
            backgroundLayer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundLayer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundLayer.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundLayer.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
    }
    
}
