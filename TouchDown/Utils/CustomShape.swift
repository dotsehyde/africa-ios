//
//  CustomShape.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 32 , height: 32))

        return Path(path.cgPath)
    }
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
