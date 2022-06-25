//
//  DetailAddToCartView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct DetailAddToCartView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .foregroundColor(.white)
                .fontWeight(.bold)
            Spacer()
        }
            .padding(15)
            .background(shop.selcetedProduct?.bgColor ?? sampleProduct.bgColor)
            .clipShape(Capsule())

    }
}

struct DetailAddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        DetailAddToCartView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
