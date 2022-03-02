//
//  ContentView.swift
//  MyBank_app
//
//  Created by bnkwsr2 on 28.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State var screen = "SecurityScreen"
    @State var viewModule = ViewModule()
    @State var selection = 0
    var body: some View {
        if (screen == "SecurityScreen") {
            SecurityScreen(screen: $screen)
                .environmentObject(viewModule)
        } else if (screen == "HomeScreen") {
            HomeScreen(screen: $screen, selection: $selection)
                .environmentObject(viewModule)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
