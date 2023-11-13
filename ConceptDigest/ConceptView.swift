//
//  ConceptView.swift
//  ConceptDigest
//
//  Created by bartek on 13/11/2023.
//

import SwiftUI

struct ConceptView: View {
    let concept: Concept
    
    var body: some View {
        VStack {
            Text(concept.name)
                .font(.largeTitle)
                .padding()
            Text(concept.meaning)
                .font(.title)
            Spacer()
        }
        .padding()
    }
}

struct ConceptView_Previews: PreviewProvider {
    static var previews: some View {
        ConceptView(concept: Concept(name: "Concept to learn", meaning: "Concept I want to learn"))
    }
}
