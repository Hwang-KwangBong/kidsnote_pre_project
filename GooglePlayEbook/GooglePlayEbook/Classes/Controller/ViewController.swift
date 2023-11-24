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
    
        setSearchBar()
    }

}

// Mark: UI Component
extension ViewController {
    //서치바 세팅
    func setSearchBar(){
        
        //서치바 만들기
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search"
        //왼쪽 서치아이콘 이미지 세팅하기
        searchBar.setImage(UIImage(named: "icSearchNonW"), for: UISearchBar.Icon.search, state: .normal)
        //오른쪽 x버튼 이미지 세팅하기
        searchBar.setImage(UIImage(named: "icCancel"), for: .clear, state: .normal)
        //네비게이션에 서치바 넣기
        
        self.navigationController?.navigationBar.topItem?.titleView = searchBar
        
        if let textfield = searchBar.value(forKey: "searchField") as? UITextField {
            //서치바 백그라운드 컬러
            textfield.backgroundColor = UIColor.black
            //플레이스홀더 글씨 색 정하기
            textfield.attributedPlaceholder = NSAttributedString(string: textfield.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
            //서치바 텍스트입력시 색 정하기
            textfield.textColor = UIColor.white
            //왼쪽 아이콘 이미지넣기
            if let leftView = textfield.leftView as? UIImageView {
                leftView.image = leftView.image?.withRenderingMode(.alwaysTemplate)
                //이미지 틴트컬러 정하기
                leftView.tintColor = UIColor.white
            }
            //오른쪽 x버튼 이미지넣기
            if let rightView = textfield.rightView as? UIImageView {
                rightView.image = rightView.image?.withRenderingMode(.alwaysTemplate)
                //이미지 틴트 정하기
                rightView.tintColor = UIColor.white
            }
 
        }
    }
}

