//
//  ConcurrencyApp.swift
//  Concurrency
//
//  Created by Jonni Akesson on 2023-02-23.
//

import SwiftUI

@main
struct ConcurrencyApp: App {
    var body: some Scene {
        WindowGroup {
            UsersListView()
                .onAppear {
                    UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                }
        }
    }
}
