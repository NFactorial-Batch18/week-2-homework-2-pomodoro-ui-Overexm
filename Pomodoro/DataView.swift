//
//  DataView.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 06.05.2022.
//

import SwiftUI

struct DataView: View {
    var body: some View {
        VStack{
        HStack{
            Text("Focus time")
                .font(.system(size: 17))
                .fontWeight(.regular)
                .frame(width: 304, alignment: .leading)
                .foregroundColor(.white)
            TextField("25:00", text: .constant(""))
                .foregroundColor(Color("secondary"))
        }.padding(.horizontal,14)
         .padding(.vertical,11)
            
         Divider()
                .background(Color("secondary"))
            
            HStack{
                Text("Break time")
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .frame(width: 304, alignment: .leading)
                    .foregroundColor(.white)
                TextField("05:00", text: .constant(""))
                    .foregroundColor(Color("white"))
            }.padding(.horizontal,14)
             .padding(.vertical,11)
            Divider()
                .background(Color("secondary"))
        }
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView()
    }
}
