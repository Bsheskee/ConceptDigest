//
//  ContentView.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()

    var body: some View {
        NavigationView {
            VStack {
                if viewModel.myConcepts.concept.isEmpty {
                    Text("Add concepts you want to learn")
                        .padding(.top, 50)
                        .foregroundColor(.gray)
                } else {
                    ForEach(viewModel.myConcepts.concept, id: \.self) { concept in
                        Text(concept)
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
