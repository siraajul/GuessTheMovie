//
//  ContentView.swift
//  GuessTheMovie
//
//  Created by Sirajul Islam on 15/8/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    let synthesizer = AVSpeechSynthesizer()
    
    func speak(text: String){
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Fred")
        synthesizer.speak(utterance)
    }
    
    var body: some View {
        VStack {
            //Texts
            Text("Guess These Movies")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text("Can you guess the movie from these emojis?")
                .fontWeight(.light)
            
            Text("Tap the button to find out the answer")
                .fontWeight(.light)
            
            //Buttons
            
            //Titanic
            Button{
                speak(text: "Titanic")
            }label: {
                Text("🛳️ 🧊 ⛰")
            }
            .padding()
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            
            //Baby's Day Out
            Button{
                speak(text: "Baby's Day Out")
            }label: {
                Text("👶🏻 🚗 🚛")
            }
            .padding()
            .background(.yellow)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            
            //Ocean 11
            Button{
                speak(text: "Ocean 11")
            }label: {
                Text("🌊 1️⃣ 1️⃣")
            }
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            
            Button{
                speak(text: "Spider Man")
            }label: {
                Text("🕷️ 👱‍♂️")
            }
            .padding()
            .background(.mint)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
