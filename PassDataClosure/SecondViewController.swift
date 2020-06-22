//
//  SecondViewController.swift
//  PassDataClosure
//
//  Created by Tung on 6/21/20.
//  Copyright © 2020 Tung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let numberTextfield: UITextField = {
        let textfield = UITextField()
        textfield.borderStyle = .roundedRect
        textfield.placeholder = "Enter your number"
        return textfield
    }()
    var tieuDe: String?
    var passData: ((Int) -> Void)?
    var n: Int = Int.random(in: 1...100)
    override func viewDidLoad() {
        super.viewDidLoad()

        if tieuDe != nil {
            navigationItem.title = tieuDe
        }
        view.addSubview(numberTextfield)
       
        numberTextfield.frame = CGRect(x: 30, y: 100, width: 200, height: 40)
     
        let backButton = UIBarButtonItem(title: "Back", style: .done, target: self, action: #selector(backToMain))
        
        navigationItem.leftBarButtonItem = backButton
    }


    @objc func backToMain(){
        guard let num = numberTextfield.text else {
            return
        }
        if Int(num) == n {
            passData?(Int(num)!)
        }
        
        self.navigationController?.popViewController(animated: true)
    }

}
