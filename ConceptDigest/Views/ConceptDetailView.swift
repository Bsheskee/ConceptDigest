//
//  ConceptView.swift
//  ConceptDigest
//
//  Created by bartek on 13/11/2023.
//

import SwiftUI

struct ConceptDetailView: View {
    let concept: Concept
    @State private var showAddConcept = false

    var body: some View {
        VStack {
            Text(concept.name)
                .font(.largeTitle)
                .padding()
            Text(concept.meaning)
                .font(.title)
            Spacer()
                .sheet(isPresented: $showAddConcept) {
                    AddConceptView()
                }
        }
        .toolbar {
            Button(action: { showAddConcept.toggle()}) {
                Image(systemName: "plus").font(.title).tint(.black)
            }
        }
        .padding()
    }
}

struct ConceptView_Previews: PreviewProvider {
    static var previews: some View {
        ConceptDetailView(concept: Concept(name: "Concept to learn", meaning: "Concept I want to learn"))
    }
}
