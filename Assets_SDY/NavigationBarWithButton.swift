//
//  NavigationBarWithButton.swift
//  Assets_SDY
//
//  Created by 심두용 on 2023/04/20.
//

import SwiftUI

struct NavigationBarWithButton: ViewModifier {
    
    var title: String = ""
    
    func body(content: Content) -> some View {
        return content
            .navigationBarItems(leading:
                Text(title)
                    .font(.system(size: 24, weight: .bold))
                    .padding()
            , trailing:
                Button(action: {
                    print("자산 추가 버튼 tapped")
                }, label: {
                    Image(systemName: "plus")
                    Text("자산 추가")
                })
                .accentColor(.black)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 12))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black)
                )
            )
//            .navigationBarTitleDisplayMode(.inline)
//            .onAppear {
//                let appearance = UINavigationBarAppearance()
//                appearance.configureWithTransparentBackground()
//                appearance.backgroundColor = UIColor(white: 1, alpha: 0.5)
//                UINavigationBar.appearance().standardAppearance = appearance
//                UINavigationBar.appearance().compactAppearance = appearance
//                UINavigationBar.appearance().scrollEdgeAppearance = appearance
//            }
    }
}

extension View {
    func navigationBarWithButtonStyle(_ title: String) -> some View {
        return self.modifier(NavigationBarWithButton(title: title))
    }
}

struct Previews_NavigationBarWithButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.gray.edgesIgnoringSafeArea(.all)
                .navigationBarWithButtonStyle("내 자산")
        }
    }
}
