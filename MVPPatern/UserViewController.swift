//
//  UserViewController.swift
//  MVPPatern
//
//  Created by Yaroslav Krasnokutskiy on 1.7.24..
//

import UIKit

protocol UserViewProtocol: AnyObject {
    func showUsers(users: [User])
    func showError(error: String)
}

class UserViewController: UIViewController, UserViewProtocol {
    
    var presenter: UserPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewLoaded()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }

    func showUsers(users: [User]) {
        //
    }
    
    func showError(error: String) {
        //
    }

    func payButtonTapped() {
        presenter.payButtonTapped()
    }
}

