//
//  ViewController.swift
//  SectionsApp
//
//  Created by Moises Apaza on 13/07/2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let sections = [Section(key: .sectionB, title: "Section B", enabled: true),
                            Section(key: .sectionA, title: "Section A", enabled: true),
                            Section(key: .sectionC, title: "Section C", enabled: true)]
    
    private let scrollView = UIScrollView()
    private let stackView = UIStackView()
    private let sectionAView = SectionAView()
    private let sectionBView = SectionBView()
    private let sectionCView = SectionCView()
    
    private lazy var subviews: [HomeViewProtocol] = {
        return [sectionAView, sectionBView, sectionCView]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpStackView()
        addSubviews()
    }
    
    private func setUpStackView() {
        stackView.axis = .vertical
        stackView.spacing = 8
    }

    private func addSubviews() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addSubviews(getSubviews())
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.width.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        stackView.snp.makeConstraints { make in
            make.top.width.bottom.equalToSuperview()
        }
        makeConstraintsOfLabels()
    }
    
    private func makeConstraintsOfLabels() {
        sectionAView.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(400)
        }
        sectionBView.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(400)
        }
        sectionCView.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.main.bounds.width)
            make.height.equalTo(400)
        }
    }
    
    private func getSubviews() -> [UIView] {
        let views: [UIView?] = sections.map { section in
            return section.enabled ? subviews.first(where: { $0.sectionKey == section.key }) : nil
        }
        return views.compactMap({ $0 })
    }
}
