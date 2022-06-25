//
//  BrandsView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct BrandsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                ForEach(brands){ b in
                    Button {
                        
                    } label: {
                        
                        BrandItem(brand: b)
                    }

                }
            }
            .frame(height: 200)
            .padding(15)
        }
    }
}

struct BrandsView_Previews: PreviewProvider {
    static var previews: some View {
        BrandsView()
            .previewLayout(.sizeThatFits)
    }
}


//MARK: - BrandItemView
struct BrandItem: View {
    let brand: Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12) .stroke(.gray, lineWidth: 1))
            

    }
}

struct BrandItem_Previews: PreviewProvider {
    static var previews: some View {
        BrandItem(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
    }
}
