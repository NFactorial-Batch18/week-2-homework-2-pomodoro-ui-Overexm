//
//  PomodoroView.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 05.05.2022.
//

import SwiftUI

struct PomodoroView: View {
    var body: some View {
        ZStack{
//            Image("Bg")
//                            .resizable()
//                            .ignoresSafeArea(.all)
            
            main
        }.edgesIgnoringSafeArea(.all)
            .padding(.top, -114)
        
    }
    
    var main: some View{
        VStack{
            HStack(spacing: 10){
                Button(action:{}){
                Image(systemName: "pencil")
                Text("Focus Category")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                }
            }.padding(.horizontal,22)
                .padding(.vertical,8)
                .foregroundColor(.white)
                .background(.ultraThinMaterial)
                .cornerRadius(24)
            
            RingView()
                .padding(.top, 52)
                .padding(.bottom,60)
            
            HStack(spacing:80){
                Button(action:{}){
                    symbolLabels(image: "play")}
                Button(action:{}){
                    symbolLabels(image: "stop.fill")}
            }
        }
    }
}

struct symbolLabels: View{
    let image : String
    var body: some View{
        Image(systemName: image)
            .font(.system(size: 20))
            .padding(18)
            .foregroundColor(.white)
            .background(.ultraThinMaterial)
            .cornerRadius(100)
    }
}
struct PomodoroView_Previews: PreviewProvider {
    static var previews: some View {
        PomodoroView()
    }
}
