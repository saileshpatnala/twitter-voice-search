//
//  WelcomeView.swift
//  twitter-voice-search
//
//  Created by Sailesh Patnala on 1/1/22.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var getStarted: Bool
    
    var body: some View {
        VStack {
            Text("Welcome to Twitter Voice Search")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            Text("description of the app here")
            Spacer()
            Button("Get Started") {
                getStarted.toggle()
            }
                .padding()
                .foregroundColor(Color.white)
                .background(Color.black)
                .clipShape(Capsule())
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(getStarted: .constant(true))
    }
}
