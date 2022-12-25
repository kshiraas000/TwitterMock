//
//  TwitterMockApp.swift
//  TwitterMock
//
//  Created by Sada Kshirsagar on 12/21/22.
//

import SwiftUI
import Firebase

@main
struct TwitterMockApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                //ProfilePhotoSelectorView()
            }
            .environmentObject(viewModel)
        }
    }
}
