//
//  fuyasuViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/23.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class fuyasuViewController: UIViewController {
    
  //  var textFieldNum = 0
 //   var nowPoint = 0
    
    var currentNum = 0

    // データクラスのインスタンス化
//    var data = Data(now: Int, textNum: Int)
    
    let singleton :Singleton = Singleton.shered
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
     //   data.textFieldNum = 0
    }
    
 // ポイント増やす画面にて押したら１ポイント増えるやつ
    @IBAction func plus1Fuyasu(_ sender: UIButton) {
        addNum(plus: 1)
    }
    
    //ポイント増やす画面にて押したら10ポイント増えるやつ
    @IBAction func plus10Fuysu(_ sender: UIButton) {
        addNum(plus: 10)
    }
    
    // ポイント増やす画面にて押したら100ポイント増えるやつ
    @IBAction func plus100Fuyasu(_ sender: UIButton) {
        addNum(plus: 100)
    }
    
    func addNum(plus: Int) {
        currentNum += plus
        fuyasuLabel.text = "\(currentNum)"
    }
    
    // 増やすポイントを反映して表示するラベル
    @IBOutlet weak var fuyasuLabel: UILabel!
    
    // テキストフィールドに入力したポイント数分増やす
    @IBAction func fuyasuBottun(_ sender: UIButton) {
        // textfiledの内容取得
        fuyasuLabel.text! = "\(currentNum)"
        // 現在のポイントに反映させる 元々のNowpointをgetしないとcurrentNumだけだと更新されちゃうから
        singleton.saveNowPoint(nowPoint: singleton.getNowPoint() + currentNum)
        // 入力した数のアラート出させる
        showAlert(message: "\(currentNum)P増えました", completion: nil)
        // リセット
        // 数字をリセット
   //     data.textFieldNum = 0
        // ラベルに表示される文字列もリセット
        fuyasuLabel.text! = ""

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
