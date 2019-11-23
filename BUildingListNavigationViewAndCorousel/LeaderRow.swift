//
//  LeaderRow.swift
//  BUildingListNavigationViewAndCorousel
//
//  Created by Ramill Ibragimov on 23.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct LeaderRow: View {
    
    let leader: Leader
    
    var body: some View {
        HStack {
            Image(leader.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text(leader.name)
                    .font(.headline)
                Text(leader.title)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

struct LeaderRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LeaderRow(leader: leadersData[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LeaderRow(leader: leadersData[1])
                .previewLayout(.fixed(width: 300, height: 70))
            LeaderRow(leader: leadersData[2])
                .previewLayout(.fixed(width: 300, height: 70))
            LeaderRow(leader: leadersData[3])
                .previewLayout(.fixed(width: 300, height: 70))
            LeaderRow(leader: leadersData[4])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}
