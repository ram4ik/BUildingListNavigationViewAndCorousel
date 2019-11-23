//
//  LeaderList.swift
//  BUildingListNavigationViewAndCorousel
//
//  Created by Ramill Ibragimov on 23.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct LeaderList: View {
    let leaders: [Leader]
    
    var body: some View {
        NavigationView {
            List {
                LeaderCorousel(leaders: leaders)
                    .frame(width: UIScreen.main.bounds.width)
                    .padding([.leading], -20)
                ForEach(leadersData) { leader in
                    NavigationLink(destination:
                        LeaderDetail(leader: leader)) {
                        LeaderRow(leader: leader)
                    }
                }
            }.navigationBarTitle(Text("Apple Leadership"))
        }
    }
}

struct LeaderList_Previews: PreviewProvider {
    static var previews: some View {
        LeaderList(leaders: leadersData)
            .environment(\.colorScheme, .dark)
    }
}

