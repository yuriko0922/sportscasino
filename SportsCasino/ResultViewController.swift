//
//  ResultViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/28.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 現在の日時取得
        let dt = Date()
        let dateFormatter = DateFormatter()
        
        // DateFormatter を使用して書式とロケールを指定する
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yMMMdHms", options: 0, locale: Locale(identifier: "ja_JP"))
        
        print(dateFormatter.string(from: dt))
    }
}
