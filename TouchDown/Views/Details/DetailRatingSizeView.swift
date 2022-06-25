//
//  DetailRatingSizeView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct DetailRatingSizeView: View {
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            //Ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(grayColor)
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { i in
                        Button {

                        } label: {
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(grayColor.cornerRadius(5))
                        }

                    }
                }


            }
            Spacer()
            //Sizes
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                HStack(alignment: .center, spacing: 3) {
                    ForEach(sizes, id: \.self) { size in
                        Button {

                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(grayColor)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5).stroke(grayColor,lineWidth: 1))
                        }

                    }
                }


            }
        }
    }

    struct DetailRatingSizeView_Previews: PreviewProvider {
        static var previews: some View {
            DetailRatingSizeView()
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
