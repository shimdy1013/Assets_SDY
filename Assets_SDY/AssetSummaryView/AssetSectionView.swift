//
//  AssetSectionView.swift
//  Assets_SDY
//
//  Created by 심두용 on 2023/04/27.
//

import SwiftUI

struct AssetSectionView: View {
    @ObservedObject var assetSection: Asset
    
    var body: some View {
        VStack(spacing: 20) {
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data) { asset in
                HStack {
                    Text(asset.title)
                        .font(.title2)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(asset.amount)
                        .font(.title3)
                        .foregroundColor(.primary)
                }
                Divider()
            }
        }
        .padding()
    }
}

struct AssetSectionView_Previews: PreviewProvider {
    static var previews: some View {
        AssetSectionView(assetSection: Asset(
            id: 0,
            type: .bankAccount,
            data: [
                AssetData(id: 0, title: "신한은행", amount: "530,000원"),
                AssetData(id: 1, title: "국민은행", amount: "1,530,000원"),
                AssetData(id: 2, title: "하나은행", amount: "2,530,000원")
            ]
        )
        )
    }
}
