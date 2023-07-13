//
//  SectionBView.swift
//  SectionsApp
//
//  Created by Moises Apaza on 13/07/2023.
//

import UIKit
import SnapKit

class SectionBView: HomeView, HomeViewProtocol {
    var sectionKey: SectionKey = .sectionB
    
    private let label = UILabel().customize(text: "Section B", background: .blue)
    
    override func setupViews() {
        addSubview(label)
        label.snp.makeConstraints({ $0.size.equalToSuperview() })
    }
}
