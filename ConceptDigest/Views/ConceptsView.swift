//
//  ContentView.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import SwiftUI



struct ConceptsView: View {
    @State private var showAddConcept = false
    @EnvironmentObject private var myConcepts: ConceptsManager
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(myConcepts.concepts) { concept in
                        NavigationLink(destination: ConceptDetailView(concept: concept)) {
                            Text(concept.name)
                        }
                    }
                    .onMove { indices, newOffset in
                        myConcepts.move(indices: indices, newOffset: newOffset)
                    }
                }
                if myConcepts.concepts.isEmpty {
                    Text("Add concepts you want to learn")
                        .foregroundColor(.gray)
                        .padding(.bottom, 100)
                }
            }
            
            //bind childview $changes to update the @parent
            .sheet(isPresented: $showAddConcept) {
                AddConceptView()
            }
            .navigationTitle("Concepts")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItemGroup(placement:
                        .navigationBarTrailing) {
                            EditButton().tint(.black)
                            Button(action: { showAddConcept.toggle()}) {
                                Image(systemName: "plus").font(.title).tint(.black)
                            }
                        }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConceptsView()
            .environmentObject(ConceptsManager())
    }
}
//TODO: One- TextField should return
