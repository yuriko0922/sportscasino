//
//  loginViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/22.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit


class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // テキストフィールドに入力した数字を入れる
    var textFieldNum = ""
    
    // 現在のポイント
    var nowPoint = 0
    
    
    
    // 受け取るすポイントを入力するテキストフィールド
    @IBOutlet weak var uketoriTextField: UITextField!
    
    // テキストフィールドに入力したポイント受け取る
    @IBAction func uketoriBottun(_ sender: UIButton) {
         // textfiledの内容取得
        textFieldNum = uketoriTextField.text!
        // 入力した数のアラート出させる
        showAlert(message: "\(textFieldNum)P受け取りました")
    }
  
    
    // 増やすポイントを入力するテキストフィールド
    @IBOutlet weak var fuyasuTextField: UITextField!
    
    // テキストフィールドに入力したポイント数分増やす
    @IBAction func fuyasuBottun(_ sender: UIButton) {
        
        
        // textfiledの内容取得
        textFieldNum = fuyasuTextField.text!
        
        print(textFieldNum)
        // 入力した数のアラート出させる
      showAlert(message: "\(textFieldNum)P増えました")
        
    }
    
    
    // 現在のポイントを表示させるラベル
    @IBOutlet weak var pointLabel: UILabel!
    
    
    
    
    // アラートを表示する関数
    func showAlert(message: String) {
        //アラートの作成
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        //アラートのアクション(ボタン部分の定義）
        let close = UIAlertAction(title: "閉じる", style: .cancel, handler: nil)
        //作成したアラートに閉じるボタン追加
        alert.addAction(close)
        //アラートを表示する
        present(alert,animated: true, completion: nil)
    }

}
