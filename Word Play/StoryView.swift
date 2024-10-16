//
//  StoryView.swift
//  Word Play
//
//  Created by Tessa Murray on 10/7/24.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
            func writeStory() -> String {
                return "One night me and my \(words.noun0) were \(words.verbing0) along a hidden path. All of a sudden we hear a loud \(words.noise) from deep in the \(words.place). The noise made us \(words.verb0) out of our \(words.noun1) and we started to \(words.verb1) as fast as we could! " + "Just when we thought we got far enough away, we stumbled upon a \(words.creature0) that started talking to us about \(words.noun2). Never in my life have I seen a talking \(words.creature1)! I was relieved to spot a \(words.noun3) in the distance that hopefully could give us a place to hide. " + "As we made our ways towards it, we heard that \(words.adjective0) noise again! We start \(words.verbing1) and finally reach our destination. What a \(words.adjective1) night it was!"
            }
        return Text(writeStory())
        }
    }
    
    struct StoryView_Previews: PreviewProvider{
        static var previews: some View {
            StoryView(words: Words())
        }
    }
