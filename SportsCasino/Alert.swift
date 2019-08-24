//
//  Alert.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/23.
//  Copyright © 2019 yurityann. All rights reserved.
//

import Foundation
import UIKit


public class Alert {
    
    
    public let message: String
    
    public init(message: String?) {
        self.message = message ?? ""
    }
    
    // アラートを表示する関数
    func show(vc: UIViewController?) {
        //アラートの作成
        let alert = UIAlertController(title: nil, message: self.message, preferredStyle: .alert)
        //アラートのアクション(ボタン部分の定義）
        let close = UIAlertAction(title: "閉じる", style: .cancel, handler: nil)
        //作成したアラートに閉じるボタン追加
        alert.addAction(close)
        //アラートを表示する
        vc?.present(alert,animated: true)
    }
}

extension UIViewController {
    
    func showAlert(message: String) {
        let alert = Alert(message: message)
        alert.show(vc: self)
        
    }
}




