//
//  ContentView.swift
//  Assets_SDY
//
//  Created by 심두용 on 2023/04/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .assets
   
    enum Tab {
        case assets
        case recommend
        case alert
        case setting
    }
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                AssetView()
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Image(systemName: "dollarsign.circle.fill")
                        Text("자산")
                    }
                    .tag(Tab.assets)
                Color.white
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Image(systemName: "hand.thumbsup.fill")
                        Text("추천")
                    }
                    .tag(Tab.recommend)
                Color.white
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Image(systemName: "bell.fill")
                        Text("알림")
                    }
                    .tag(Tab.alert)
                Color.white
                    .edgesIgnoringSafeArea(.all)
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("설정")
                    }
                    .tag(Tab.setting)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
