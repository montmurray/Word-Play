//
//  ContentView.swift
//  Word Play
//
//  Created by Tessa Murray on 10/7/24.
//

import SwiftUI
struct Words{
    //nouns
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    var place = ""
    var creature0 = ""
    var creature1 = ""
    
    //adjectives
    var adjective0 = ""
    var adjective1 = ""
    
    //verbs
    var verb0 = ""
    var verb1 = ""
    var verbing0 = ""
    var verbing1 = ""
    
    //noise
    var noise = ""
}

struct CustomTextField: View{
    let placeholder : String
    let variable : Binding<String>
    var body : some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        Text("Word Play")
            .font(.title)
            .bold()
        NavigationView {
            VStack {
                //MVP
                Text("Please enter the requested words below.")
                HStack{
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "verb ending in '-ing'", variable: $words.verbing0)
                    CustomTextField(placeholder: "noise", variable: $words.noise)
                }
                HStack {
                    CustomTextField(placeholder: "place", variable: $words.place)
                    CustomTextField(placeholder: "verb", variable: $words.verb0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                }
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb1)
                    CustomTextField(placeholder: "creature", variable: $words.creature0)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "creature", variable: $words.creature1)
                    CustomTextField(placeholder: "noun", variable: $words.noun3)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                }
                HStack {
                    CustomTextField(placeholder: "verb ending in '-ing'", variable: $words.verbing1)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                }
                NavigationLink("Next", destination: StoryView(words: words))
                Spacer()
            }
        }
        .navigationTitle("Word Play")
    }
}

#Preview {
    ContentView()
}
