//
//  GaugeInSwiftUIApp.swift
//  GaugeInSwiftUI WatchKit Extension
//
//  Created by Ramill Ibragimov on 08.01.2021.
//

import SwiftUI

@main
struct GaugeInSwiftUIApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
