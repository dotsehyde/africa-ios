//
//  DetailHeroView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct DetailHeroView: View {
    @State private var isAminate = false
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)

                Text(shop.selcetedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
                .offset(y: isAminate ? -50 : -75)
            Spacer()
            Image(shop.selcetedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAminate ? 0 : -35)
        }
            .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAminate.toggle()
            }
        }
    }
}

struct DetailHeroView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeroView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()

    }
}
