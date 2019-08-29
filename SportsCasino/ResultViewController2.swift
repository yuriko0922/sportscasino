//
//  ResultViewController2.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/28.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class ResultViewController2: UIViewController {
    
    // 現在の日時
    var nowTime = Date()
    var dateFormatter = DateFormatter()
    
    // 辞書
    var dictionay: [[String: Any]] = [[:]]
    
    // let d = dateList()
    
    var myDate: Date = Date()
    var myDate2: Date = Date()
    let matchRate = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // de-ta
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 9)
        
        let string = "2019-08-30T05:20:00Z"
        
        myDate = dateFormatter.date(from: string)!
        
        let string2 = "2019-08-29T01:03:00Z"
        myDate2 = dateFormatter.date(from: string2)!
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 9)
        // 試合日時１
        let string1 = "2019-08-30T05:20:00Z"
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
            ["team": "フランス", "team2": "イタリア", "day": myDateSecond, "rate": "\(self.matchRate)"],
            ["team": "ブラジル", "team2": "カナダ", "day": myDateThird, "rate": "\(self.matchRate)"]
        ]
        
        let time1 = "\(dictionay[0]["day"] ?? "")"
        let timePrefix1 = String(time1.prefix(19))
        
        let time2 = "\(dictionay[0]["day"] ?? "")"
        let timePrefix2 = String(time1.prefix(19))
        
        let time3 = "\(dictionay[0]["day"] ?? "")"
        let timePrefix3 = String(time1.prefix(19))
        
        // 1番上の試合
        dayLabelR1.text = timePrefix1
        teamLabelR1.text = "\(dictionay[0]["team"] ?? "")"
        teemLaberR21.text = "\(dictionay[0]["team2"] ?? "")"
        // 2番目の試合
        dayLabelR2.text = timePrefix2
        teamLabelR2.text = "\(dictionay[1]["team"] ?? "")"
        teamLabelR22.text = "\(dictionay[1]["team2"] ?? "")"
        
    }
    @IBOutlet weak var dayLabelR1: UILabel!
    
    @IBOutlet weak var teamLabelR1: UILabel!
    
    @IBOutlet weak var teemLaberR21: UILabel!
    
    @IBOutlet weak var dayLabelR2: UILabel!
    
    @IBOutlet weak var teamLabelR2: UILabel!
    
    @IBOutlet weak var teamLabelR22: UILabel!
    
    // 結果を見るボタン1
    @IBAction func lookResult(_ sender: UIButton) {
        
//        print("betKey:\(UserDefaults.standard.bool(forKey: "betKey"))")
        
        if (UserDefaults.standard.string(forKey: "betCountryKey") != nil) {
            if nowTime >= myDate2 {
                // 結果観れる画面に遷移
                performSegue(withIdentifier: "ok", sender: nil)
            } else {
                performSegue(withIdentifier: "still", sender: nil)
            }
        } else {
            showAlert(message: "BETする試合を選択してください", completion: { _ in
                self.navigationController?.popViewController(animated: true)
            })
        }
    }
    
    // 結果を見るボタン2
    @IBAction func lookResult2(_ sender: UIButton) {
        showAlert(message: "まだ試合が終わっていません", completion: nil)
    }
    
}
