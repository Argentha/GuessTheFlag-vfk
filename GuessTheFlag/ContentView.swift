//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by vefa kosova on 15.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
//1        ZStack {
//            VStack(spacing: 0) {
//                Color.red
//                Color.blue
//            }
//            Text("Your content")
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//        }
//        .ignoresSafeArea()


//2        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom

//2        LinearGradient(gradient: Gradient(stops: [
//            .init(color: .white, location: 0.45),
//            .init(color: .black, location: 0.55)
//        ] ) , startPoint:  .top, endPoint: .bottom)

//2        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)

//2        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)


//3        Button("Delete selection") {
//            print("Now deleting")
//        }

//3        Button("Delete selection", action: executeDelete)
        
//3        Button("Button 1") { }
//            .buttonStyle(.bordered)
//        Button("Button 2", role: .destructive) { }
//            .buttonStyle(.bordered)
//        Button("Button 3") { }
//            .buttonStyle(.borderedProminent)
//        Button("Button 4", role: .destructive) { }
//            .buttonStyle(.borderedProminent)
        
//3        Button {
//            print("Button was tapped!")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundColor(.white)
//                .background(.red)
//        }
        
//3        Image(systemName: "pencil")
        
//3        Button {
//            print("Edit button was tapped!")
//        } label: {
//            Image(systemName: "pencil")
//            Label("Edit", systemImage: "pencil")
//        }
//        .renderingMode(.original)
        
        
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this")
        }
    
        
        
    }
//        func executeDelete() {
//            print("Now deleting")
//
//    }
}











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
