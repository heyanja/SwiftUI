//
//  ContentView.swift
//  Attentive Scroll
//
//  Created by Anna Fadieieva on 2024-05-02.
//
import SwiftUI

struct ContentView: View {
    private let redRectangleHeight: CGFloat = 50  // Высота красного прямоугольника

    var body: some View {
        // Основной контейнер для управления слоями
        ZStack {
            // Весь доступный экран для скроллируемого контента
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(0..<101, id: \.self) { index in
                        Text(" \(index)")
                    
                            .frame(height: 20)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.bottom, redRectangleHeight)                
                
            }
          
            
            // Позиционирование красного прямоугольника и таб-бара
            VStack {
                Spacer()  // Этот Spacer выталкивает всё содержимое к нижней части экрана
                Rectangle()  // Красный прямоугольник
                    .foregroundColor(.red)
                    .frame(height: redRectangleHeight)
                    .padding(.bottom, 25)
                    
                TabView {
                    Text("")
                        .tabItem {
                            Label("Tab", systemImage: "star.fill")
                        }
                }
                .frame(height: redRectangleHeight)  // Высота для таб-бара
            }
        }
        .edgesIgnoringSafeArea(.all)  // Расширение интерфейса до краев экрана
    }
}

