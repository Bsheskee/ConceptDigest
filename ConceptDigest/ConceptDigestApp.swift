//
//  ConceptDigestApp.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import SwiftUI

@main
struct ConceptDigestApp: App {
    @StateObject private var store = ConceptStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
