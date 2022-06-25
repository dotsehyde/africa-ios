//
//  DetailNavigationBarView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct DetailNavigationBarView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeOut) {
                    shop.detailShown = false
                    shop.selcetedProduct = nil
                    feedback.impactOccurred()
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            Button {

            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }
    }
}

struct DetailNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        DetailNavigationBarView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
