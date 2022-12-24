//
//  AuthViewModel.swift
//  TwitterMock
//
//  Created by Sada Kshirsagar on 12/23/22.
//

import SwiftUI
import Firebase
import FirebaseStorage

class AuthViewModel: ObservableObject {
    @Published var userSession: User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG: Login with email \(email)")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            
            print("DEBUG: Registered user successfully")
            print("DEBUG: User is \(self.userSession)")
        }
    }
}
