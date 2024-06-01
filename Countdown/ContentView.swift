//
//  ContentView.swift
//  Countdown
//
//  Created by Bholanath Barik on 26/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false;
    
    var body: some View {
        ZStack {
            WheatherAppBackground(isNight: isNight)
            
            VStack {
                CityLocation(cityName: "Cupertino, CA")
                
                ExtractedView(
                    iconName: !isNight ? "cloud.sun.fill" : "cloud.moon.fill",
                    temperature: !isNight ? "76" : "33"
                )
                    
                HStack(spacing : 20) {
                    weekTemparatureView(
                        weekDayName: "T",
                        weekDayIcon: "cloud.sun.fill",
                        weekDayTemp: "45"
                    )
                    
                    weekTemparatureView(
                        weekDayName: "W",
                        weekDayIcon: "cloud.sun.fill",
                        weekDayTemp: "45"
                    )
                    
                    weekTemparatureView(
                        weekDayName: "T",
                        weekDayIcon: "cloud.sun.fill",
                        weekDayTemp: "45"
                    )
                    
                    weekTemparatureView(
                        weekDayName: "F",
                        weekDayIcon: "cloud.sun.fill",
                        weekDayTemp: "45"
                    )
                    
                    weekTemparatureView(
                        weekDayName: "S",
                        weekDayIcon: "cloud.sun.fill",
                        weekDayTemp: "45"
                    )
                    weekTemparatureView(
                        weekDayName: "S",
                        weekDayIcon: "cloud.sun.fill",
                        weekDayTemp: "45"
                    )
                }
                .padding(60)
                
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherBtn(title: "Dark Mode",
                               textColor: .white,
                               backgroundColor: isNight ? .green : .cyan)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WheatherAppBackground : View {
    let isNight : Bool;
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [
                isNight ? Color.black : Color.blue,
                Color.white
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityLocation: View {
    let cityName: String;
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32 ,weight : .medium , design : .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct ExtractedView: View {
    let iconName : String;
    let temperature : String;
    
    var body: some View {
        VStack (spacing: -10) {
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ , height: 100)
            
            Text("\(temperature)°")
                .font(.system(size: 70 , weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct weekTemparatureView: View {
    let weekDayName: String
    let weekDayIcon: String
    let weekDayTemp: String
    
    var body: some View {
        VStack{
            Text(weekDayName)
                .font(.system(size: 15,weight: .semibold , design: .default))
                .foregroundStyle(.white)
            
            Image(systemName: weekDayIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40 , height: 20)
            
            Text("\(weekDayTemp)°")
                .font(.system(size: 20 , weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
