//
//  ViewController.swift
//  PassDataClosure
//
//  Created by Tung on 6/21/20.
//  Copyright © 2020 Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let label: UILabel = {
        let label = UILabel()
        label.text = "Nhập một số bất kỳ"
        label.numberOfLines = 0
        return label
        
    }()
    let songaunhienLable : UILabel = {
        let songaunhienLable = UILabel()
        songaunhienLable.numberOfLines = 0
        return songaunhienLable
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let rightButton = UIBarButtonItem(title: "Right", style: .plain, target: self, action: #selector(goToMan2))
        
        
        
        navigationItem.rightBarButtonItems = [rightButton]
        
        view.addSubview(label)
        label.frame = CGRect(x: 20, y: 100, width: 200, height: 200)
        label.center = view.center
    }

    @objc func goToMan2(){
        let secondVC = SecondViewController()
        secondVC.tieuDe = "Tiêu đề"
        secondVC.passData = { [weak self] (num) in
            guard let newSelf = self else { return }
            newSelf.label.text = """
            Ban da trung so: \(num)
            """
        }
        
        label.text = "Ban nhap ko trung so ngau nhien!"
       
        self.navigationController?.pushViewController(secondVC, animated: true)
        }
    
    }
    




