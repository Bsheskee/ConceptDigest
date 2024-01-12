//
//  ConceptDigestApp.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import SwiftUI

@main
struct ConceptDigestApp: App {
    @StateObject private var store = ConceptsViewModel()
    var body: some Scene {
        WindowGroup {
            ConceptsView()
                .environmentObject(store)
        }
    }
}
