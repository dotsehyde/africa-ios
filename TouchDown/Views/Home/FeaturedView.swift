//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct FeaturedView: View {

    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(players, id: \.self.id) { p in
                FeaturedItem(player: p)
            }
        }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .background(backgroundColor)

    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
            .previewLayout(.sizeThatFits)
            .background(backgroundColor)
            .padding()
    }
}

//MARK: - FeaturedItemView
struct FeaturedItem: View {
    let player: Player
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            .padding(.top, 10)
            .padding(.horizontal, 15)
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
