//
//  FirebaseManager.swift
//  SwiftUIFirebaseChat
//
//  Created by Jonathan Ballona Sanchez on 8/23/22.
//

import Foundation
import FirebaseAuth
import FirebaseCore
import FirebaseStorage
import FirebaseFirestore

class FirebaseManager: NSObject {
    
    let auth: Auth
    let storage: Storage
    let firestore: Firestore
    
    static let shared = FirebaseManager()
    
    override init() {
        FirebaseApp.configure()
        
        self.auth = Auth.auth()
        self.storage = Storage.storage()
        self.firestore = Firestore.firestore()
        
        super.init()
    }
}
