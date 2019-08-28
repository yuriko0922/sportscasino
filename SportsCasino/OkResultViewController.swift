//
//  OkResultViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/28.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class OkResultViewController: UIViewController {
    let singleton :Singleton = Singleton.shered
    
    // 倍率の数字demo
    var matchRate = 2000
    
    var dictionay: [[String: Any]] = [[:]]
    
    
    // ポイント差異
   // var ComparisonPoint: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // de-ta
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 9)
        // 試合日時１
        let string = "2019-08-30T05:20:00Z"
        let myDate = dateFormatter.date(from: string)!
        
        // 試合日時2
        let strungSecond = "2019-08-30T11:00:00Z"
        let myDateSecond = dateFormatter.date(from: strungSecond)!
        
        // 試合日時3
        let stringThird = "2019-08-30T20:30:00Z"
        let myDateThird = dateFormatter.date(from: stringThird)!
        // 試合のいろんな情報
        dictionay = [
            ["team": "アメリカ", "team2": "日本", "day": myDate, "rate": "\(self.matchRate)", "win": "アメリカ"],
            ["team": "フランス", "team2": "イタリア", "day": myDateSecond, "rate": "\(self.matchRate)", "win": "イタリア"],
            ["team": "ブラジル", "team2": "カナダ", "day": myDateThird, "rate": "\(self.matchRate)"]
        ]
        
    
        
        resultTeamLabel1.text = "\(dictionay[0]["team"] ?? "")"
        
        resultTeamLabel2.text = "\(dictionay[0]["team2"] ?? "")"
        
        resultDayLabel.text = "\(dictionay[0]["day"] ?? "")"
        
        
        result()
    }
    // 結果の日時ラベル
    @IBOutlet weak var resultDayLabel: UILabel!
    
    // 結果のチームラベル1
    @IBOutlet weak var resultTeamLabel1: UILabel!
    
    // 結果のチームラベル2
    @IBOutlet weak var resultTeamLabel2: UILabel!
    
    // 結果の的中おR外れラベル
    @IBOutlet weak var resultBetLabel: UILabel!
    
    func result() {
        if let winner = dictionay[0]["win"] as? String {
            if winner == selectedCountry[0] {
                resultBetLabel.text = "的中"
                 betNum *= 3
                resultPointLabel.text = "\(betNum)"
                singleton.saveNowPoint(nowPoint: singleton.getNowPoint() + betNum)
                //ComparisonPoint = betNum
            } else {
                resultBetLabel.text = "はずれ"
                betNum = 0
                //resultPointLabel.text = "\(betNum)"
            }
        }
        betNum = 0
    }
    
    
    // 結果のポイント変動ラベル
    @IBOutlet weak var resultPointLabel: UILabel!
    
    
    
}

var betNum = 0
