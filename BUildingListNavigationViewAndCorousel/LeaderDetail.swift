//
//  ContentView.swift
//  BUildingListNavigationViewAndCorousel
//
//  Created by Ramill Ibragimov on 23.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct LeaderDetail: View {
    let leader: Leader
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(leader.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width)
                .clipped()
            Text(leader.name)
                .bold()
                .font(.largeTitle)
                .padding(.leading)
            Text(leader.title)
                .padding(.leading)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderDetail(leader: leadersData[2])
    }
}
