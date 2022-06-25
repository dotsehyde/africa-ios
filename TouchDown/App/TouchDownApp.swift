//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Benjamin on 21/06/2022.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
