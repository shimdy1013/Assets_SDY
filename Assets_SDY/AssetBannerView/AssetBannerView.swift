//
//  AssetBannerView.swift
//  Assets_SDY
//
//  Created by 심두용 on 2023/04/24.
//

import SwiftUI

struct AssetBannerView: View {

    @State private var page: Int = 0
    
    let bannerLists = [
        AssetBanner(title: "공지사항", description: "공지사항을 확인하세요", backgroundColor: .cyan),
        AssetBanner(title: "주말 이벤트", description: "이벤트", backgroundColor: .green),
        AssetBanner(title: "프로모션", description: "봄 프로모션", backgroundColor: .yellow)
    ]

    var body: some View {
        let bannerCards = bannerLists.map {
            BannerCard(banner: $0)
        }
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(page: bannerCards, currentPage: $page)
            PageControl(numberOfPages: bannerLists.count, currentPage: $page)
                .frame(width: CGFloat(bannerLists.count * 18))
                .padding(.trailing)
        }
    }
}

struct AssetBannerView_Previews: PreviewProvider {
    static var previews: some View {
        AssetBannerView()
    }
}
