//
//  fuyasuViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/23.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class fuyasuViewController: UIViewController {
    
    var textFieldNum = 0
    var nowPoint = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
 // ポイント増やす画面にて押したら１ポイント増えるやつ
    @IBAction func plus1Fuyasu(_ sender: UIButton) {
        textFieldNum += 1
        fuyasuLabel.text = "\(textFieldNum)"
    }
    //ポイント増やす画面にて押したら10ポイント増えるやつ
    @IBAction func plus10Fuysu(_ sender: UIButton) {
        textFieldNum += 10
        fuyasuLabel.text = "\(textFieldNum)"
    }
    
     // ポイント増やす画面にて押したら100ポイント増えるやつ
    
    @IBAction func plus100Fuyasu(_ sender: UIButton) {
        textFieldNum += 100
        fuyasuLabel.text = "\(textFieldNum)"
        
    }
    // 増やすポイントを反映して表示するラベル
    @IBOutlet weak var fuyasuLabel: UILabel!
    // テキストフィールドに入力したポイント数分増やす
    @IBAction func fuyasuBottun(_ sender: UIButton) {
        // textfiledの内容取得
        fuyasuLabel.text! = "\(textFieldNum)"
        // 現在のポイントに反映させる
        nowPoint += textFieldNum
        // 入力した数のアラート出させる
        showAlert(message: "\(textFieldNum)P増えました")
        // リセット
        // 数字をリセット
        textFieldNum = 0
        // ラベルに表示される文字列もリセット
        fuyasuLabel.text! = ""
        
         showAlert(message: "閉じる")
    }
    
    // アラートを表示する関数
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
