//
//  SettingsView.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 06.05.2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack{
//            Color("bgColor")
            VStack{
            Settings()
           DataView()
            Spacer()
                    .frame(height: 550)
            }
        }
        .edgesIgnoringSafeArea(.all)
       
       
        
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
