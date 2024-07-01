//
//  ViewController.swift
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func showUsers(users: [User]) {
        <#code#>
    }
    
    func showError(error: String) {
        <#code#>
    }

}

