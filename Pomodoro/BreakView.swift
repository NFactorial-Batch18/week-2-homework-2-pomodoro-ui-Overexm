//
//  BreakView.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 06.05.2022.
//

import SwiftUI

struct BreakView: View {
    var body: some View {
        ZStack{
            Image("Bg")
                            .resizable()
                            .ignoresSafeArea(.all)
            
            main
        }.edgesIgnoringSafeArea(.all)
            .padding(.top, -114)
    }
    
    var main: some View{
        VStack{
            HStack(spacing: 10){
                Image(systemName: "pencil")
                Text("Focus Category")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                    
            }.padding(.horizontal,22)
                .padding(.vertical,8)
                .foregroundColor(.white)
                .background(.ultraThinMaterial)
                .cornerRadius(24)
            
           RingStarted(name: "04:48", title: "Break")
                .padding(.top, 52)
                .padding(.bottom,60)
            
            HStack(spacing:80){
               
                    symbolLabels(image: "pause.fill")
                symbolLabels(image: "stop.fill")
            }
        }
    }
}

struct BreakView_Previews: PreviewProvider {
    static var previews: some View {
        BreakView()
    }
}
