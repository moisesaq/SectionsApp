//
//  ViewExtensions.swift
//  SectionsApp
//
//  Created by Moises Apaza on 13/07/2023.
//

import UIKit

extension UILabel {
    
    func customize(text: String, background: UIColor) -> UILabel {
        self.text = text
        backgroundColor = background
        textAlignment = .center
        return self
    }
}

extension UIStackView {
    
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach { subview in
            addArrangedSubview(subview)
        }
    }
}
