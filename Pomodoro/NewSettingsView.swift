//
//  NewSettingsView.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 06.05.2022.
//

import SwiftUI

struct NewSettingsView: View {
    var body: some View {
        ZStack{
            Color("bgColor")
                .ignoresSafeArea()
            VStack{
                HStack(alignment:.center){
                    
                    
                    Button(action:{}){
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                    }
                    
                    Settings()
                        .padding(.leading,118)
                        .padding(.trailing,118)
                    Button("Save"){
                    }
                    .foregroundColor(.white)
                    
                }.frame(maxWidth: .infinity)
                   
            DataView()
                Spacer()
        }
        }.edgesIgnoringSafeArea(.bottom)
            
    }
}

struct NewSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NewSettingsView()
    }
}
