//
//  SectionCView.swift
//  SectionsApp
//
//  Created by Moises Apaza on 13/07/2023.
//

import UIKit
import SnapKit

class SectionCView: HomeView, HomeViewProtocol {
    var sectionKey: SectionKey = .sectionC
    
    private let label = UILabel().customize(text: "Section C", background: .green)
    
    override func setupViews() {
        addSubview(label)
        label.snp.makeConstraints({ $0.size.equalToSuperview() })
    }
}
