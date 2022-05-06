//
//  PopUpView.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 05.05.2022.
//

import SwiftUI

struct PopUpView: View {
    var body: some View {
        ZStack{
            Image("Bg")
                    .resizable()
                    .ignoresSafeArea()
            
            BreakView()
            dimming
            bottomSheet
             
              
        }.edgesIgnoringSafeArea(.all)
    }
    
    var dimming: some View {
        Color.black.opacity(0.2)
    }
    
    var bottomSheet: some View{
        ZStack{
           RoundedRectangle(cornerRadius: 20)
                .fill(.white)
            VStack{
                bottomSheetHeader

                Spacer()
                    .frame(height:40)
                VStack(spacing: 20){
                HStack(spacing: 10){
                Grids(gridName: "Work")
                    
                Grids(gridName: "Study")
                }
                
                HStack{
               GridsWithBackground(gridName: "Workout")
                Grids(gridName: "Reading")
                }
                HStack{
                Grids(gridName: "Meditation")
                Grids(gridName: "Others")
                }
                    Spacer()
                        .frame(height:10)
                }
            }.padding(16)
        }.frame(height:362)
            .inBottomSheet()
    }
    
    var bottomSheetHeader: some View {
        HStack {
            Spacer()
            Text("Focus Category")
            .frame(maxWidth: .infinity, alignment: .center)
            Spacer()
            Image(systemName: "xmark")
        }
    }
    
}
struct Grids: View{
    let gridName: String
    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("secondary"))
            VStack{
                Text(gridName)
                    .fontWeight(.semibold)
            }
        }.frame(width:172, height:60)
            
    }
}
struct GridsWithBackground: View{
    let gridName: String
    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("bgColor"))
            VStack{
                Text(gridName)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
        }.frame(width:172, height:60)
            
    }
}
struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView()
    }
}

extension View{
    func inBottomSheet() -> some View {
        VStack {
            Spacer()
            self
        }
    }
}
