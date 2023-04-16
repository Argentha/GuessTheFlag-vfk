//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by vefa kosova on 15.04.2023.
//

import SwiftUI

struct ContentView: View {
    
//4    @State private var showingAlert = false
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy",
                     "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
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
        
        
//4        Button("Show Alert") {
//            showingAlert = true
//        }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("Delete", role: .destructive) { }
//            Button("Cancel", role: .cancel) { }
//        } message: {
//            Text("Please read this")
//        }
        
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .renderingMode(.original)
                    }
                }
            }
            .alert(scoreTitle, isPresented: $showingScore) {
                Button("Continue", action: askQuestion)
            } message: {
                Text("Your score is ???")
            }
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    
//4        func executeDelete() {
//            print("Now deleting")
//
//    }
}











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
