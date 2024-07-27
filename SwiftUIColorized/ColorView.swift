//
//  ColorView.swift
//  SwiftUIColorized
//
//  Created by abd ul’Karim 📚 on 27.07.2024.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .clipShape(.rect(cornerRadius: 20))
            .frame(height: 140)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.background
            ColorView(red: 1, green: 1, blue: 100)
        }
    }
}

