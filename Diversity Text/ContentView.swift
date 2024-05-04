//
//  ContentView.swift
//  Diversity Text
//
//  Created by Anna Fadieieva on 2024-05-04.
//

import SwiftUI

struct ContentView: View {
    @State private var containerWidth: CGFloat = 300  // Начальная ширина контейнера для текста

    var body: some View {
        VStack {
            Text(attributedText)
                .frame(width: containerWidth)  // Ширина контейнера управляется слайдером
                .border(Color.red, width: 2)
                .animation(.easeInOut, value: containerWidth)  // Анимация изменения ширины

            Slider(value: $containerWidth, in: 100...300)  // Диапазон ширины от 100 до 300
                .padding()

            Text("")
                .padding()
        }
    }

    var attributedText: AttributedString {
        var text = AttributedString("Марафон по SwiftUI «Отцовский Пинок»")
        if let range1 = text.range(of: "Марафон") {
            text[range1].foregroundColor = .gray
            text[range1].font = .system(size: 22, weight: .medium)
        }
        
        if let range2 = text.range(of: "по SwiftUI") {
            text[range2].foregroundColor = .black
            text[range2].font = .system(size: 22, weight: .medium)
        }

        if let range3 = text.range(of: "«Отцовский Пинок»") {
            text[range3].foregroundColor = .blue
            text[range3].font = .system(size: 26, weight: .bold)
        }
        

        return text
    }
}


