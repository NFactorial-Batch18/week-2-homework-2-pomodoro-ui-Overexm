//
//  RingView.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 05.05.2022.
//

import SwiftUI

struct RingView: View {
    @State var progress = 0.5
    var body: some View {
        ZStack{
            
            Circle()
                .stroke(lineWidth: 6)
                .foregroundColor(.white)
                .opacity(0.30)
            
//            Circle()
//                .trim(from: 0.0, to: min(progress, 0.5))
//                .stroke(lineWidth: 6)
//                .foregroundColor(.blue)
//                .rotationEffect(Angle(degrees: 270))
            
            VStack(spacing: 30){
                VStack(spacing: 5){
                Text("25:00")
                        .font(.title)
                        .font(.system(size: 44))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        
                    
                    Text("Focus on your task")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                }
                
            }
        }
        .frame(width:248 , height: 248)
        .padding()
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
