//
//  ContentView.swift
//  MeuPrimeiroApp
//
//  Created by User on 29/08/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var color: Color = .purple
    @State var bk: Color = .orange
    @State var sliderValue : Double = 0
    var text : String = "Olá, Mundo!"
    
    
    var body: some View {
        
        VStack {
            Image("apple-logo")
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .foregroundColor(color)
//                .foregroundStyle(.tint)
                .padding(20)
                
            Text(text)
            ColorPicker("Minha cor favorita", selection: ($color), )
                .cornerRadius(20)
                .padding(.horizontal)
                .frame(width: 350, height: 150)
            Slider(value: $sliderValue, in:0...100)
        }
        .padding(50)
        .frame(maxHeight: .infinity)
        //.frame(width: 300, height: 300)
        .background(bk.opacity(sliderValue/100))
    }
    
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
