//
//  AddConceptView.swift
//  ConceptDigest
//
//  Created by bartek on 12/11/2023.
//

import SwiftUI

struct AddConceptView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Button("Done") {
                presentationMode.wrappedValue.dismiss()
            }
            Spacer()
        }
    }
}

struct AddConceptView_Previews: PreviewProvider {
    static var previews: some View {
        AddConceptView()
    }
}
