//
//  LeaderCorousel.swift
//  BUildingListNavigationViewAndCorousel
//
//  Created by Ramill Ibragimov on 23.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct LeaderCorousel: View {
    let leaders: [Leader]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Corousel")
            ScrollView {
                HStack {
                    ForEach(leaders) { leader in
                        NavigationLink(destination: LeaderDetail(leader: leader)) {
                            CircleImage(leader: leader)
                        }
                    }
                }
            }
        }
        .frame(height: 200)
    }
}

struct LeaderCorousel_Previews: PreviewProvider {
    static var previews: some View {
        LeaderCorousel(leaders: leadersData)
    }
}

struct CircleImage: View {
    let leader: Leader
    
    var body: some View {
        return Image(leader.imageName)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 140)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .shadow(radius: 2)
    }
}
