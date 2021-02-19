//
//  iDineApp.swift
//  iDine
//
//  Created by Subhrajyoti Chakraborty on 18/02/21.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
