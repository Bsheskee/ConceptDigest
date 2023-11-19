//
//  ConceptViewModel.swift
//  ConceptDigest
//
//  Created by bartek on 19/11/2023.
//

import Foundation

final class ConceptsManager: ObservableObject {
    @Published var concepts: [Concept] = []
    
    func move(indices: IndexSet, newOffset: Int) {
        concepts.move(fromOffsets: indices, toOffset: newOffset)
    }
}
