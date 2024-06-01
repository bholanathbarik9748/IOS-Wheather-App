//
//  WeatherBtn.swift
//  Countdown
//
//  Created by Bholanath Barik on 30/05/24.
//

import SwiftUI

struct WeatherBtn: View {
    let title : String;
    let textColor : Color;
    let backgroundColor : Color;
    
    var body: some View {
        Text(title)
            .frame(width: 300, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
            
    }
}

#Preview {
    WeatherBtn(title: "Test Title",
               textColor: .white,
               backgroundColor: .blue)
}
