//
//  SectionAView.swift
//  SectionsApp
//
//  Created by Moises Apaza on 13/07/2023.
//

import UIKit

class SectionAView: HomeView, HomeViewProtocol {
    var sectionKey: SectionKey = .sectionA
    
    private let label = UILabel().customize(text: "Section A", background: .red)
    
    override func setupViews() {
        addSubview(label)
        label.snp.makeConstraints({ $0.size.equalToSuperview() })
    }
}
