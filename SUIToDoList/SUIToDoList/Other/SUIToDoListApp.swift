//
//  SUIToDoListApp.swift
//  SUIToDoList
//
//  Created by Akyl Mukatay  on 24.02.2024.
//

import FirebaseCore
import SwiftUI

@main
struct SUIToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
