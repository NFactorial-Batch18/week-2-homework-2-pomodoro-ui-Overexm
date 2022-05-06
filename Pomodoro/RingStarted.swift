//
//  RingStarted.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 06.05.2022.
//

import SwiftUI

struct RingStarted: View {
    let name:String
    let title: String
    var body: some View {
        ZStack{
            
            Circle()
                .stroke(lineWidth: 6)
                .foregroundColor(.white)
                .opacity(0.30)
            
            Circle()
                .trim(from: 0.0, to: 0.1)
                .stroke(lineWidth: 6)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: 270))
            
            VStack(spacing: 30){
                VStack(spacing: 5){
                Text(name)
                        .font(.title)
                        .font(.system(size: 44))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text(title)
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                }
                
            }
        }
        .frame(width:248 , height: 248)
        .padding()
    }
}

struct RingStarted_Previews: PreviewProvider {
    static var previews: some View {
        RingStarted(name: "24:32", title: "Focus on your task")
    }
}
