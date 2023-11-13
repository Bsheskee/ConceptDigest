//
//  ConceptStoreModel.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import Foundation

final class ConceptStore: ObservableObject {
    @Published var concepts: [Concept] = []
}

struct Concept: Identifiable {
    let id = UUID()
    let name: String
    let meaning: String
}
