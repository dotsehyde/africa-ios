//
//  FooterView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(2)
            Image("logo")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)

            Text("Copyright © Benjamin.\nAll Rights Reserved.")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .layoutPriority(1)
                .multilineTextAlignment(.center)
        }
            .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(backgroundColor)
    }
}
