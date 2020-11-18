//
//  ViewController.swift
//  Parsing Nested JSON
//
//  Created by Adwait Barkale on 18/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let url = "https://jsonplaceholder.typicode.com/users"
    let wrongUel = "https://abc.in.com/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callApi()
    }

    func callApi()
    {
        NetworkManager.shared.urlRequest(with: url)
    }

}

