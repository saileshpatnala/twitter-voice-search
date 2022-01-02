
//
//  SearchView.swift
//  twitter-voice-search
//
//  Created by Sailesh Patnala on 1/1/22.
//

import SwiftUI

struct SearchView: View {
    @Binding var getStarted: Bool
    @StateObject var speechRecognizer = SpeechRecognizer()
    
    var body: some View {
        VStack {
            Text("Search View")
                .font(.largeTitle)
                .padding()
            Text($speechRecognizer.transcript.wrappedValue)
            Spacer()
            Button("Start", action: {
                speechRecognizer.stopTranscribing()
                speechRecognizer.transcribe()
            })
            .padding()
            
            Button("Stop", action: {
                speechRecognizer.stopTranscribing()
                // TODO: add logic to NLP the text
            })
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(getStarted: .constant(false))
    }
}

/*
 {
     Image(systemName: "mic")
         .font(.title)
         .padding(.top)
 }
 */
