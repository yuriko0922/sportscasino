//
//  uketoriViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/23.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class uketoriViewController: UIViewController {
    // ポイントラベルに表示される値
    var textFieldNum = 0
    // 現在のポイント
    var nowPoint = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // ポイント受け取り画面にて押したら１ポイント増えるやつ
    @IBAction func plus1Uketori(_ sender: UIButton) {
        textFieldNum += 1
        uketoriLabel.text = "\(textFieldNum)"
        
    }
    
    // ポイント受け取り画面にて押したら10ポイント増えるやつ
    @IBAction func plus10Uketori(_ sender: UIButton) {
        textFieldNum += 10
        uketoriLabel.text = "\(textFieldNum)"
    }
    
    // ポイント受け取り画面にて押したら100ポイント増えるやつ
    @IBAction func plus100Uketori(_ sender: UIButton) {
        textFieldNum += 100
        uketoriLabel.text = "\(textFieldNum)"
    }
     // 受け取るポイントを反映して表示するラベル
    @IBOutlet weak var uketoriLabel: UILabel!
    
     // テキストフィールドに入力したポイント受け取る
    @IBAction func uketoriBottun(_ sender: UIButton) {
        // textfiledの内容取得
    uketoriLabel.text = "\(textFieldNum)"
        // 現在のポイントに反映させる
        nowPoint -= textFieldNum
        // 入力した数のアラート出させる
 showAlert(message: "\(textFieldNum)P受け取りました")
        // リセット
        // 数字をリセット
       textFieldNum = 0
    // ラベルに表示される文字列もリセット
        showAlert(message: "閉じる")
        //Alert().showAlert(message: "\(textFieldNum)P受け取りました" ,vc: self)
        //present(,animated: true, completion: nil)
        
       uketoriLabel.text = ""
        
    }
    
//    // アラートを表示する関数
//    func showAlert(message: String) {
//        //アラートの作成
//        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
//        //アラートのアクション(ボタン部分の定義）
//        let close = UIAlertAction(title: "閉じる", style: .cancel, handler: nil)
//        //作成したアラートに閉じるボタン追加
//        alert.addAction(close)
//        //アラートを表示する
//        present(alert,animated: true, completion: nil)
//    }
    
    
}
