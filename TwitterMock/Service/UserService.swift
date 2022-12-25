//
//  UserService.swift
//  TwitterMock
//
//  Created by Sada Kshirsagar on 12/25/22.
//

import Firebase

struct UserService {
    
    func fetchUser(withUid uid: String) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let data = snapshot?.data() else { return }
                
                print("DEBUG: User data is \(data)")
            }
    }
}
