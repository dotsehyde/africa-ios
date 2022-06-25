//
//  ContentView.swift
//  TouchDown
//
//  Created by Benjamin on 21/06/2022.
//

import SwiftUI
struct ContentView: View {
    //MARK: - Props
    @EnvironmentObject var shop: Shop
    //MARK: - Body
    var body: some View {
        ZStack {
            if(shop.detailShown == true && shop.selcetedProduct != nil) {
                ProductDetail()
            } else {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 10)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedView()
                                .frame(height: 250)
                                .padding(.vertical, 20)
                            CategoryView()
                            TitleView(title: "Helmets")
                            ProductsView()
                            TitleView(title: "Brands")
                            BrandsView()
                            FooterView()
                                .padding(.horizontal)
                        }
                    }
                }
                    .background(backgroundColor
                    .ignoresSafeArea(.all, edges: .all))
            }
        }
            .ignoresSafeArea(.all, edges: .top)
    }
}//: body

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())

    }
}
