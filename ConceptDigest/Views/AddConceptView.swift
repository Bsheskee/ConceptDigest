//
//  AddConceptView.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import SwiftUI

struct AddConceptView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var someConcepts: ConceptsViewModel
    @State private var name = ""
    @State private var meaning = ""

    
    var body: some View {
        VStack {
            Spacer()
            TextField("Concept to learn", text: $name)
                .autocorrectionDisabled(true)
                .padding()
            TextField("Explain with your own words", text: $meaning)
                .padding()
            Button("Done") {
                if !name.isEmpty {
                    someConcepts.concepts.append(Concept(name: name, meaning: meaning))
                }
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .foregroundColor(.black)
            Spacer()
        }
    }
}

struct AddConceptView_Previews: PreviewProvider {
    static var previews: some View {
        AddConceptView()
            .environmentObject(ConceptsViewModel())
    }
}
