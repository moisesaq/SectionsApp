//
//  HomeView.swift
//  SectionsApp
//
//  Created by Moises Apaza on 13/07/2023.
//

import UIKit

class HomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
    }
}

protocol HomeViewProtocol: HomeView {
    var sectionKey: SectionKey { get }
}
