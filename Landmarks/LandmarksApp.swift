//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Hojin Jang on 2022/04/18.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
