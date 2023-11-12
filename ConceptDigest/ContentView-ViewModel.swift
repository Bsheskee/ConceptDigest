//
//  ContentView-ViewModel.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import Foundation

//responsible for updating the UI
extension ContentView {
    @MainActor class ViewModel : ObservableObject {
        @Published var showAddConcept = false
        @Published private(set) var myConcepts = ConceptStore()
    }
}
