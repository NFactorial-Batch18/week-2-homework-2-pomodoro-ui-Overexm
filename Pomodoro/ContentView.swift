//
//  ContentView.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 05.05.2022.
//

import SwiftUI

struct ContentView: View {
    init(){
        UITabBar.appearance().unselectedItemTintColor = .lightGray

    }
    @State private var selectedItem = 1

    var body: some View{
        ZStack{

                    main
                }
            

    }
    
    var main: some View{
            TabView(selection: $selectedItem){
                ZStack{
                    Image("Bg")
                        .resizable()
                        .ignoresSafeArea()
                    PomodoroView()}
                    .tabItem{
                        ZStack{
    //                        Circle()
    //                            .background(.white)
    //                            .frame(width: 10, height: 10)
                        Image(systemName:"house.circle.fill")
                            .renderingMode(.template)
                        Text("Main")


                        }

                    }
                ZStack{
                    Color("bgColor")
                        .ignoresSafeArea()
                    SettingsView()}
                    .tabItem{
                        Image(systemName:"slider.horizontal.3")
                            .renderingMode(.template)
                        Text("Settings")
                            .foregroundColor(.white)
                    }
                
                ZStack{
                    Color("bgColor")
                        .ignoresSafeArea()
                    HistoryView()}
                    .tabItem{
                        Image(systemName: "doc")
                            .renderingMode(.template)
                        Text("History")
                            .foregroundColor(.white)
                    }
            }.accentColor(.white)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
