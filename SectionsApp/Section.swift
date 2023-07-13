//
//  Section.swift
//  SectionsApp
//
//  Created by Moises Apaza on 13/07/2023.
//

import Foundation

struct Section {
    let key: SectionKey
    let title: String
    let enabled: Bool
}

enum SectionKey {
    case sectionA
    case sectionB
    case sectionC
}
