//
//  MainView.swift
//  twitter-voice-search
//
//  Created by Sailesh Patnala on 1/1/22.
//

import SwiftUI

struct MainView: View {
    @State var getStarted: Bool = false
    
    var body: some View {
        ZStack {
            if self.getStarted == false {
                WelcomeView(getStarted: self.$getStarted)
            }
            else if self.getStarted == true {
                SearchView(getStarted: self.$getStarted)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
