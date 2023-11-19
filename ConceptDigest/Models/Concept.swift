//
//  ConceptStoreModel.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import Foundation

struct Concept: Identifiable {
    let id = UUID()
    let name: String
    let meaning: String
}
