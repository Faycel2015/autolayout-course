//
//  SafeAreaGuide.swift
//  AnchorsLayoutGuides
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-14.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class SafeAreaGuide: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        let topLabel = makeLabel(withText: "top")
        let bottomLabel = makeLabel(withText: "bottom")
        let leadingLabel = makeLabel(withText: "leading")
        let trailingLabel = makeLabel(withText: "trailing")
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // Challenge: Add a bottom label
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            leadingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            trailingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }

}
