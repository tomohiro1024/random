//
//  ContentView.swift
//  random
//
//  Created by 宮野智宏 on 2024/01/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
            Button {
                print("tap")
            } label: {
                Text("ランダム")
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
