//
//  ContentView.swift
//  class2
//
//  Created by Shaimaa on 5/4/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var athkar = [
        "استغفر الله",
        "الحمدلله",
        "الله اكبر"
    ]
    @State var counterTh = [0, 0, 0]
    var body: some View {
        VStack{
            NavigationView{
                List{
                    NavigationLink(destination: detail2(theker: athkar[0], thekerCounter: $counterTh[0])){
                        VStack{
                            Text(athkar[0])
                                .font(.largeTitle)
                            Text("You have \(counterTh[0]) of 20")
                                .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                        }.frame(height: 100)
                    }
                    NavigationLink(destination: detail2(theker: athkar[1], thekerCounter: $counterTh[1])){
                        VStack{
                            Text(athkar[1])
                                .font(.largeTitle)
                            Text("You have \(counterTh[1]) of 20")
                        .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                        }.frame(height: 100)
                    }
                    NavigationLink(destination: detail2(theker: athkar[2], thekerCounter: $counterTh[2])){
                        VStack{
                            Text(athkar[2])
                                .font(.largeTitle)
                            Text("You have \(counterTh[2]) of 20")
                        .font(.system(size: 20))
                                .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                        }.frame(height: 100)
                    }
                }.navigationBarTitle("أذكاري", displayMode: .inline)
                
            }
            Button(action: {
                self.counterTh[0] = 0
                self.counterTh[1] = 0
                self.counterTh[2] = 0
            }) {
                Text("Reset")
                .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                .font(.largeTitle)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct thekerRow: View {
//    var theker : String
//    @Binding var thekerCounter : Int
//
//    var body: some View {
//        HStack{
//            Text(theker)
//            Button(action: {
//                self.thekerCounter += 1
//            })  {
//                Text("\(thekerCounter)")
//            }.frame(width: 100, height: 100, alignment: .center)
//                .foregroundColor(.white)
//                .background(Color.green)
//                .clipShape(Circle())
//                .padding()
//        }
//    }
//}



