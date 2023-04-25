//
//  BannerCard.swift
//  Assets_SDY
//
//  Created by 심두용 on 2023/04/24.
//

import SwiftUI

struct BannerCard: View {

    let banner: AssetBanner

    var body: some View {
        ZStack {
            Color(banner.backgroundColor)
            VStack {
                Text(banner.title)
                    .font(.title)
                Text(banner.description)
                    .font(.subheadline)
            }
        }
    }
}
struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        let banner = AssetBanner(title: "제목", description: "설명", backgroundColor: .red)
        BannerCard(banner: banner)
    }
}
