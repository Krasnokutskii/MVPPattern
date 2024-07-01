//
//  DataManager.swift
//  MVPPatern
//
//  Created by Yaroslav Krasnokutskiy on 1.7.24..
//

import Foundation

protocol DataManagerProtocol {
    func fetchUsers(completion: @escaping ([User]?, Error?) -> Void)
}

class DataManager: DataManagerProtocol {
    func fetchUsers(completion: @escaping ([User]?, Error?) -> Void) {
        // Code to fetch users from API goes here
    }
}
