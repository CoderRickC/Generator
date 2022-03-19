//
//  GeneratorApp.swift
//  Generator
//
//  Created by Richard Clegg on 19/03/2022.
//

import SwiftUI

@main
struct GeneratorApp: App {
    @StateObject var vm = PasswordGeneratorViewModel()
    var body: some Scene {
        WindowGroup {
            PasswordView()
                .environmentObject(vm)
        }
    }
}
