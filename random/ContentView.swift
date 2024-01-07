//
//  ContentView.swift
//  random
//
//  Created by 宮野智宏 on 2024/01/05.
//

import SwiftUI

struct ContentView: View {
    @State private var randomNum = 1
    @State private var timer: Timer?
    @State private var teamName = "アーセナル"
    
    var body: some View {
        VStack {
            Spacer()
            Image("\(randomNum)")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width/2)
                .padding()
            Spacer()
            Text("\(teamName)")
                .fontWeight(.bold)
                .font(.system(size: 30))
            Spacer()
            Button {
                random()
                
            } label: {
                Text("ランダム")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.black)
                    .cornerRadius(20)
            }

        }
        .padding()
    }
    
    private func random() {
        print("tap")
        randomNum = Int.random(in: 1...6)
        print(randomNum)
        switch randomNum {
        case 1:
            teamName = "アーセナル"
        case 2:
            teamName = "トッテナム"
        case 3:
            teamName = "マンチェスターC"
        case 4:
            teamName = "マンチェスターU"
        case 5:
            teamName = "チェルシー"
        case 6:
            teamName = "リヴァプール"
        default:
            break
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
