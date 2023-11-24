//
//  ViewController.swift
//  GooglePlayEbook
//
//  Created by kwangbong hwang on 2023/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sampleLable: UILabel = {
            let label = UILabel()
            label.font = .preferredFont(forTextStyle: .title3)
            label.text = "스토리보드 없이 구현한 RootViewController"
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        view.backgroundColor = .white
        view.addSubview(sampleLable)
        sampleLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sampleLable.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    }


}

