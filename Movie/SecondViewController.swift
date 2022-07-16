//
//  SecondViewController.swift
//  Movie
//
//  Created by 이현호 on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    //인터페이스빌더아웃렛 변수
    @IBOutlet weak var titleLabel: UILabel!
    //이미지의 속성을 변경할 수 있어서 var로 선언
    @IBOutlet weak var posterImageView: UIImageView!
    
    
    
    //앱 실행시 런치스크린 다음으로 가장 처음 보이는 화면
    //커맨드 옵션 왼쪽하면 중괄호 접음
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //스토리보드보다 코드가 더 우선
        
        //이미지를 랜덤으로 변경
        posterImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        
        //이미지의 테두리의 둥근 정도와 두께를 설정
        posterImageView.layer.cornerRadius = 10
        posterImageView.layer.borderWidth = 5
        
        //보더컬러는 추가적인 작업이 필요하기 때문에 cg컬러의 타입을 갖고 있기 때문에 타입 생략 불갸
        posterImageView.layer.borderColor = UIColor.blue.cgColor
        
        //레이블의 속성 설정
        //레이블 이름 설정
        titleLabel.text = "7번방의 선물"
        //레이블의 배경 색 설정
        titleLabel.backgroundColor = .lightGray
        //레이블의 이름 색깔 설정
        titleLabel.textColor = .cyan
        //레이블의 폰트 사이즈 설정
        titleLabel.font = .boldSystemFont(ofSize: 30)
        
    }
    
    //리셋버튼을 클릭하면 포스터의 이미지가 랜덤으로 변경
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        
        posterImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        
    }
    
    
}
