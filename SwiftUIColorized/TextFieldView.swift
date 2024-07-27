//
//  TextFieldView.swift
//  SwiftUIColorized
//
//  Created by abd ul’Karim 📚 on 27.07.2024.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    
    let action: () -> Void
        
    var body: some View {
        TextField("0", text: $text) { _ in
            withAnimation {
                action()
            }
        }
        .frame(width: 50, alignment: .trailing)
        .multilineTextAlignment(.center)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.numberPad)
    }
}

struct SliderValueTF_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            TextFieldView(text: .constant("100"), action: {})
        }
    }
}
