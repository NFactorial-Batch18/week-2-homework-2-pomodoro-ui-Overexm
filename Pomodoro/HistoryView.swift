//
//  HistoryView.swift
//  Pomodoro
//
//  Created by Merey Orynbassar on 06.05.2022.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        ZStack{
            VStack{
            topHeader
                Group{
                    HStack{
                        CustomText(dateTime: "21.11.21")
                        Spacer()
                    }
                    .frame(alignment:.leading)
                CustomField(part: "Focus time", time: "01:28:32")
                
            CustomField(part: "Break time", time: "05:00")
                
                    HStack{
                        CustomText(dateTime: "20.11.21")
                        Spacer()
                    }
                    .frame(alignment:.leading)
                CustomField(part: "Focus time", time: "25:00")
                
            CustomField(part: "Break time", time: "05:00")
                    HStack{
                        CustomText(dateTime: "19.11.21")
                        Spacer()
                    }
                    .frame(alignment:.leading)
                CustomField(part: "Focus time", time: "25:00")
                
            CustomField(part: "Break time", time: "05:00")
                }
                Spacer()
               
            }
        }.padding(.top)
    }
    
    
    var topHeader: some View{
        Text("History")
            .font(.system(size: 17))
            .fontWeight(.semibold)
            .foregroundColor(.white)
    }
    
    
    
    
}
struct CustomText: View{
    let dateTime: String
    var body: some View{
        
        VStack(alignment: .leading){
            Text(dateTime)
                .padding(.leading)
                .font(.title3)
                .font(.system(size: 20))
                .foregroundColor(.white)
        }
    }
}
struct CustomField:View{
    let part: String
    let time: String
   
    
    var body: some View {
        HStack{
             Text(part)
                .font(.system(size: 17))
                .fontWeight(.regular)
                .foregroundColor(.white)
//                .frame(width: 304, alignment: .leading)
           Spacer()
                .frame(width:190 )
            
            TextField(time, text: .constant(""))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.trailing)
               

        }.padding(.horizontal,16)
         .padding(.vertical,11)
       Divider()
            .background(Color("secondary"))
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
