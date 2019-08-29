//
//  BetViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/27.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class BetViewController: UIViewController {
    // 賭けたポイントの値
    
    let singleton :Singleton = Singleton.shered
    // false アラート出す かけてない
    // true かけてる
    var betCoutry: String = ""
    var betNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // 賭けるポイント表示されるラベル
    
    @IBOutlet weak var betPointLabel: UILabel!
    
    // 賭けるポイント1プラスされるボタン
    @IBAction func betPuls1Bottun(_ sender: UIButton) {
        betNum += 1
        betPointLabel.text = "\(betNum)"
    }
    // 賭けるポイント10プラスされるボタン
    @IBAction func betPuls10Bottun(_ sender: UIButton) {
        betNum += 10
        betPointLabel.text = "\(betNum)"
    }
    // 賭けるポイント100プラスされるボタン
    @IBAction func betPuls100Bottun(_ sender: UIButton) {
        betNum += 100
        betPointLabel.text = "\(betNum)"
    }
    
    @IBAction func betBottun3(_ sender: UIButton) {
        if betNum == 0 {
            showAlert(message: "ポイントを選択してください", completion: nil)
        } else {
            betNumber = betNum
            UserDefaults.standard.set(betNumber, forKey: "betNumKey")
            UserDefaults.standard.set(betCoutry, forKey: "betCountryKey")
            
            // textfiledの内容取得
            betPointLabel.text = "\(betNum)"
            // 現在のポイントに反映させる
            singleton.saveNowPoint(nowPoint: singleton.getNowPoint() - betNum)
            // 入力した数のアラート出させる
            showAlert(message: "\(betNum)P BETしました", completion: {
                _ in
                self.navigationController?.popViewController(animated: true)
            })
            
            // ラベルに表示される文字列もリセット
            betPointLabel.text = "0"
        }
    }
}
