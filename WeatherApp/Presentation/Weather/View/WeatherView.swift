//
//  WeatherView.swift
//  WeatherApp
//
//  Created by 곽서방 on 7/16/24.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan.opacity(0.5)]),
            startPoint: .topTrailing, endPoint: .bottomTrailing)
            
            VStack{
                Text("서울")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                
            Image(systemName:"sun.max.fill")
                .resizable()
                .renderingMode(.original)
                .frame(width: 180, height: 180)
                .aspectRatio(contentMode: .fit)
            }
           
        }
        .edgesIgnoringSafeArea(.all)


    }
}

func a() {
    guard let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String else { return }
    print(apiKey)
}

#Preview {
    WeatherView()
}
