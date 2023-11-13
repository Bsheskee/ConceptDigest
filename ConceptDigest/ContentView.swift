//
//  ContentView.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import SwiftUI



struct ContentView: View {
//    @StateObject private var viewModel = ViewModel()
    @State private var showAddConcept = false
    @EnvironmentObject private var myConcepts: ConceptStore
    
    var body: some View {
        NavigationView {
            VStack {
                if myConcepts.concepts.isEmpty {
                    Text("Add concepts you want to learn")
                        .padding(.top, 50)
                        .foregroundColor(.gray)
                }
                ForEach(myConcepts.concepts) { concept in
                    NavigationLink(destination: ConceptView(concept: concept)) {
                        Text(concept.name)
                    }
                }
                Spacer()
            } //bind childview $changes to update the @parent
            .sheet(isPresented: $showAddConcept) {
                AddConceptView()
            }
            .navigationTitle("Concepts")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                Button(action: { showAddConcept.toggle()}) {
                    Image(systemName: "plus").font(.title).tint(.black)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ConceptStore())
    }
}
//TODO: One- TextField should return
