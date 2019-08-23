//
//  loginViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/22.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit


class loginViewController: UIViewController {

    // 現在のポイントを表示するラベル
    @IBOutlet weak var nowPointLabel: UILabel!
    

    // テキストフィールドに入力した数字を入れる
    var textFieldNum: Int = 0
    
    // 現在のポイント
    var nowPoint = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
       
    }
    
    override func viewDidLayoutSubviews() {
        
        
    }


    // 受け取る画面に遷移するためのボタン
    @IBAction func senniUketori(_ sender: UIButton) {
        // 遷移処理
        performSegue(withIdentifier: "uketoru", sender: nil)
    }
    
    // 増やす画面に遷移するためのボタン
    @IBAction func senniFuyasu(_ sender: UIButton) {
        // 遷移処理
         performSegue(withIdentifier: "fuyasu", sender: nil)
        
    }
    // ポイント受け取り画面にて押したら１ポイント増えるやつ
    @IBAction func plus1Uketori(_ sender: Any) {
        textFieldNum += 1
        uketoriLabel.text = "\(textFieldNum)"
        
        nowPointLabel.text = "aa"
        print(nowPointLabel.text)
        print(textFieldNum)
        
    }
    // ポイント受け取り画面にて押したら100ポイント増えるやつ
    @IBAction func puls100Uketori(_ sender: Any) {
        textFieldNum += 100
        uketoriLabel.text = "\(textFieldNum)"
    }
    
    
    // ポイント増やす画面にて押したら１ポイント増えるやつ
    @IBAction func plus1Fuyasu(_ sender: Any) {
        textFieldNum += 1
        fuyasuLabel.text = "\(textFieldNum)"
        
    }
    
    // ポイント増やす画面にて押したら100ポイント増えるやつ
    @IBAction func plus100Fuyasu(_ sender: Any) {
        textFieldNum += 100
        fuyasuLabel.text = "\(textFieldNum)"
        
    }
    
    // 受け取るポイントを反映して表示するラベル
    @IBOutlet weak var uketoriLabel: UILabel!
    
    
    
    // テキストフィールドに入力したポイント受け取る
    @IBAction func uketoriBottun(_ sender: UIButton) {
         // textfiledの内容取得
       // textFieldNum = uketoriTextField.text!
        
        uketoriLabel.text = "\(textFieldNum)"
        // 入力した数のアラート出させる
        showAlert(message: "\(textFieldNum)P受け取りました")
        // リセット
        // 数字をリセット
        textFieldNum = 0
        // ラベルに表示される文字列もリセット
        uketoriLabel.text = ""
    }
  
    
    // 増やすポイントを反映して表示するラベル
    @IBOutlet weak var fuyasuLabel: UILabel!
    
    // テキストフィールドに入力したポイント数分増やす
    @IBAction func fuyasuBottun(_ sender: UIButton) {
        
        
        // textfiledの内容取得
        fuyasuLabel.text! = "\(textFieldNum)"
        // 入力した数のアラート出させる
      showAlert(message: "\(textFieldNum)P増えました")
        // リセット
        // 数字をリセット
        textFieldNum = 0
        // ラベルに表示される文字列もリセット
        fuyasuLabel.text! = ""
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
