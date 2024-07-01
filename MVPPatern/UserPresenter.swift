//
//  UserPresenter.swift
//  MVPPatern
//
//  Created by Yaroslav Krasnokutskiy on 1.7.24..
//

import Foundation

protocol UserPresenterProtocol: AnyObject {
    func viewLoaded()
}

class UserPresenter: UserPresenterProtocol {
    weak var view: UserViewProtocol?
    var dataManager: DataManagerProtocol

    init(view: UserViewProtocol, dataManager: DataManagerProtocol) {
        self.view = view
        self.dataManager = dataManager
    }

    func viewLoaded() {
        dataManager.fetchUsers { [weak self] users, error in
            if let error = error {
                self?.view?.showError(error: error.localizedDescription)
            } else if let users = users {
                self?.view?.showUsers(users: users)
            }
        }
    }
    
    func payButtonTapped() {
        // do tap and update users
        let users = [User(id: 1, name: "1", email: "1")]
        view?.showUsers(users: users)
    }
    
    func goToPayScreenTapped() {
        // coordinator would be better
//        let fakeData = someData()
//        let fakeVC = someVC()
//        let fakePresenter = somePresenter()
//        
//        fakePresenter(data: fakeData, view: fakeVC)
//        
//        view.showPayScreen(fakePresenter)
    }
}
