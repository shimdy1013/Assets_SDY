//
//  AssetMenuGridView.swift
//  Assets_SDY
//
//  Created by 심두용 on 2023/04/22.
//

import SwiftUI

struct AssetMenuGridView: View {
    
    let menuList: [[AssetMenu]] = [
        [.creditScore, .bankAccount, .investment, .loan],
        [.insurance, .creditCard, .cash, .realEstate]
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(menuList, id: \.self) {  row in
                HStack {
                    ForEach(row) { menu in
                        Button("") {
                            print("\(menu.title) button tapped.")
                        }
                        .buttonStyle(AssetMenuButtonStyle(menu: menu))
                    }
                }
            }
        }
    }
}

struct AssetMenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        AssetMenuGridView()
    }
}
