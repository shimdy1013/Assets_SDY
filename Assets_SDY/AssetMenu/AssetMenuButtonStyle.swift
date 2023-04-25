//
//  AssetMenuButtonStyle.swift
//  Assets_SDY
//
//  Created by 심두용 on 2023/04/22.
//

import SwiftUI

struct AssetMenuButtonStyle: ButtonStyle {
    
    let menu: AssetMenu
    
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            Image(systemName: menu.systemImageName)
                .resizable()
                .frame(width: 30, height: 30)
                .padding([.leading, .trailing], 10)
                
            Text(menu.title)
                .font(.system(size: 12, weight: .bold))
            
        }
        .padding()
        .foregroundColor(.blue)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

//struct AssetMenuButtonStyle_Previews: PreviewProvider {
//    static var previews: some View {
//        HStack {
//            Button(action: {
//
//            }, label: {
//
//            })
//            .buttonStyle(AssetMenuButtonStyle(menu: .creditCard))
//            Button(action: {
//
//            }, label: {
//
//            })
//            .buttonStyle(AssetMenuButtonStyle(menu: .creditScore))
//        }
//        .background(Color.gray.opacity(0.2))
//    }
//}
