//
//  ContentView.swift
//  SwiftUi-WeatherApp
//
//  Created by Digixvalley on 11/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                
                
                Label("SwiftUI CheatSheet 2.0",
                      systemImage: "cloud.sun.bolt.fill")
                
               
                
                
                
                Text("Lahore, Pakistan°")
                    .font(.system(size: 32,weight: .bold,design: .monospaced))
                    .foregroundColor(.white)
                    .frame(width: 250, height: 80, alignment: .bottom)
                    .padding(.all,10)
                
                VStack{
                    Image(systemName: "cloud.sun.bolt.fill")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("24°")
                        .font(.system(size: 46,weight: .bold))
                        .foregroundColor(.white)
                    }
                
                Spacer()
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    
                    
                    TodayNews(dayOfWeek: "Mon", imageName: "cloud.moon.rain.fill", temp: "26°")
                    
                    TodayNews(dayOfWeek: "Mon", imageName: "cloud.bolt.fill", temp: "26°")
                    
                    TodayNews(dayOfWeek: "Mon", imageName: "cloud.moon.rain.fill", temp: "26°")
                    
                    TodayNews(dayOfWeek: "Mon", imageName: "cloud.snow.fill", temp: "26°")
                    
                    
    
                }
                
                
                Spacer()
                
               
                Button("Change Date Time"){
                    
                    print("hello button")
                    
                }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.accentColor, lineWidth: 5)
                    )
                    
                
            
                          
                
                
            
                
                Spacer()

               
                
                
            }
            
           
            
    }
}
}


func signIn() {
    
    print("hello")
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct TodayNews: View {
    
    var dayOfWeek: String
    var imageName: String
    var temp: String
    
    var body: some View {
        VStack{
            
            Text(dayOfWeek)
                .font(.system(size: 24,weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text(temp)
                .font(.system(size: 28,weight: .bold))
                .foregroundColor(.white)
        }
    }
}
