//
//  DetailHeaderView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct DetailHeaderView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            Text(shop.selcetedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
            .foregroundColor(.white)
    }
}

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
