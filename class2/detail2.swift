//
//  detail2.swift
//  class2
//
//  Created by Shaimaa on 5/4/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct detail2: View {
         var theker : String
           @Binding var thekerCounter : Int
           
           var body: some View {
               HStack{
                   Text(theker)
                .font(.largeTitle)
                .foregroundColor(.black)
                   Button(action: {
                       self.thekerCounter += 1
                   })  {
                       Text("\(thekerCounter)")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    .frame(width: 100, height: 100, alignment: .center)
                        .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                        .opacity(0.4)
                   }
                    .clipShape(Circle())
                    .padding()
               }
           }
    }





//struct detail2_Previews: PreviewProvider {
//    static var previews: some View {
//        detail2(theker: "jj", thekerCounter: 7)
//    }
//}
