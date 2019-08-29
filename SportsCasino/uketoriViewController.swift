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
    var uketoriNum = 0
    
    let singleton :Singleton = Singleton.shered
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // ポイント受け取り画面にて押したら１ポイント増えるやつ
    @IBAction func plus1Uketori(_ sender: UIButton) {
        uketoriNum += 1
        uketoriLabel.text = "\(uketoriNum)"
    }
    
    // ポイント受け取り画面にて押したら10ポイント増えるやつ
    @IBAction func plus10Uketori(_ sender: UIButton) {
        uketoriNum += 10
        uketoriLabel.text = "\(uketoriNum)"
    }
    
    // ポイント受け取り画面にて押したら100ポイント増えるやつ
    @IBAction func plus100Uketori(_ sender: UIButton) {
        uketoriNum += 100
        uketoriLabel.text = "\(uketoriNum)"
    }
    // 受け取るポイントを反映して表示するラベル
    @IBOutlet weak var uketoriLabel: UILabel!
    
    // テキストフィールドに入力したポイント受け取る
    @IBAction func uketoriBottun(_ sender: UIButton) {
        // textfiledの内容取得
        uketoriLabel.text = "\(uketoriNum)"
        // 現在のポイントに反映させる
        singleton.saveNowPoint(nowPoint: singleton.getNowPoint() - uketoriNum)
        // 入力した数のアラート出させる
        showAlert(message: "\(uketoriNum)P受け取りました", completion: {
            _ in
            self.navigationController?.popViewController(animated: true)
        })
        // リセット
        // 数字をリセット
        uketoriNum = 0
        // ラベルに表示される文字列もリセット
        uketoriLabel.text = ""
    }
}
