//
//  ContentView.swift
//  RockPaperScissors WatchKit Extension
//
//  Created by a on 2021/10/09.
//

import SwiftUI

struct ContentView: View {
    
    // じゃんけんの結果を格納する変数
    // （0=初期画面、1=グー、2=チョキ、3=パー）
    @State var answerNumber = 0
    
    var body: some View {
        VStack {
            if answerNumber == 0 {
                Image(/*@START_MENU_TOKEN@*/"janken_boys"/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else if answerNumber == 1 {
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("グー")
            } else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("チョキ")
            } else {
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("パー")
            }
            
            Button(action: {
                print("タップされたよ")
                answerNumber = Int.random(in: 1...3)
            }) {
                /*@START_MENU_TOKEN@*/Text("じゃんけんをする！")/*@END_MENU_TOKEN@*/
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
