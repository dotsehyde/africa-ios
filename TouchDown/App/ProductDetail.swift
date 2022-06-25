//
//  ProductDetail.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct ProductDetail: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //NavBar
            DetailNavigationBarView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            DetailHeaderView()
                .padding(.horizontal)

            //Hero
            DetailHeroView()
                .padding(.horizontal)
                .zIndex(1)
            VStack(alignment: .center, spacing: 0) {
                //Rating, Size
                DetailRatingSizeView()
                    .padding(.bottom, 10)
                    .padding(.top, -25)
                //Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selcetedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                //Quantity, Price
                DetailQuantityFavouriteView()
                    .padding(.vertical, 10)
                //Add to Cart
                DetailAddToCartView()
                    .padding(.bottom, 20)

            }
                .padding(.horizontal)
                .background(Color.white.clipShape(CustomShape())
                .padding(.top, -105))
        }
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(shop.selcetedProduct?.bgColor ?? sampleProduct.bgColor)
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail()
            .environmentObject(Shop())
    }
}
