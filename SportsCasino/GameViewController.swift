//
//  GameViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/26.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit


/* class DateUtils {
    class func dateFromString(string: String, format: String) -> Date {
        let formatter: DateFormatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = format
        return formatter.date(from: string)!
    }
    
    class func stringFromDate(date: Date, format: String) -> String {
        let formatter: DateFormatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
}

// 元の日付の文字列
let dateString = "2018/08/29 05:00:00 +09:00"

// NSDateに変換
let date = DateUtils.dateFromString(string: dateString, format: "yyyy/MM/dd HH:mm:ss Z")
print(date)
// => "2015-03-04 03:34:56 +0000\n"

// Stringに再変換
print(DateUtils.stringFromDate(date: date, format: "yyyy年MM月dd日 HH時mm分ss秒 Z"))
// => "2015年03月04日 12時34分56秒 +0900\n"
 */


class GameViewController: UIViewController {
    
    var matchRate = 2000
    
    
//    myDateFormatter.dateFormat = "yyyy年M月d日 HH時mm分ss秒 Z"
    
//     var myDateFormatter = DateFormatter().date(from: "2019/08/29/ 12:05:00")
    
    var dictionay: [[String: Any]] = [[:]]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
     //   var myDateFormatter = DateFormatter().date(from: "1985-04-12T23:20:50Z" )!
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 9)
        
        let string = "1985-04-12T23:20:50Z"
        let myDate = dateFormatter.date(from: string)!
        
        // 試合のいろんな情報
        dictionay = [
            ["team": "アメリカ", "team2": "日本", "day": myDate , "rate": "\(self.matchRate)"],
            ["team": "フランス", "team2": "イタリア", "day": "2019/08/29", "time":"05:00", "rate": "\(self.matchRate)"],
            ["team": "ブラジル", "team2": "カナダ", "day": "2019/08/31", "time":"18:00", "rate": "\(self.matchRate)"]
        ]
        
        print(myDate)
        
        
        print(dictionay[1])
        
        
        
        // 1番上の試合
        dayLabel1.text = "\(dictionay[0]["day"] ?? "")"
        
        teamLabel1.text = "\(dictionay[0]["team"] ?? "")"
        teamLabel21.text = "\(dictionay[0]["team2"] ?? "")"
        // 2番目の試合
        dayLabel2.text = "\(dictionay[1]["day"] ?? "")"
        timeLabel2.text = "\(dictionay[1]["time"] ?? "")"
        teamLabel2.text = "\(dictionay[1]["team"] ?? "")"
        teamLabel22.text = "\(dictionay[1]["team2"] ?? "")"

        
        
    
    }
   

  
    
    
    
//   var myDateFormatter1 = DateFormatter().date(from: "2018年08月30日 05時00分00秒")
    
    
  //  myDateFormatter.dateFormat = "yyyy年M月d日 HH時mm分ss秒"
//    let day1:Date = myDateFormatter.date(from: "2018年11月29日")!
 //   let day2:Date = myDateFormatter.date(from: "2018年12月2日")!
   
    
    
    // -------- 試合情報1 ----------------------------
    // 日付代入ラベル
    @IBOutlet weak var dayLabel1: UILabel!
    // 時間代入ラベル
    @IBOutlet weak var timeLabel1: UILabel!
    // チーム代入ラベル１
    @IBOutlet weak var teamLabel1: UILabel!
    // チーム代入ラベル2
    @IBOutlet weak var teamLabel21: UILabel!
    
    // 倍率出るラベル
    @IBOutlet weak var bairituLabel: UILabel!
    
    @IBOutlet weak var bairitu6: UISegmentedControl!
    // 勝ち負け選択のやつ左
    @IBAction func bairitu1(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            // bairituLabel.text = "\(dictionay[0]["rate"]!)"
            bairituLabel.text = "50倍"
            bairitu2.selectedSegmentIndex = 1
            
        case 1:
            // bairituLabel.text = "\(dictionay[0]["rate"]!)"
            bairitu2.selectedSegmentIndex = 0
            bairituLabel.text = "1.5倍"
        case 2:
            //  bairituLabel.text = "\(dictionay[0]["rate"]!)"
            bairitu2.selectedSegmentIndex = 2
            bairituLabel.text = "26.2倍"
        default:
            print("該当なし")
        }
    }
    @IBOutlet weak var bairitu2: UISegmentedControl!
    // 勝ち負け選択のやつ右
    @IBAction func bairitu5(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
           // bairituLabel.text = "\(dictionay[0]["rate"]!)"
            bairitu6.selectedSegmentIndex = 1
            bairituLabel.text = "1.5倍"
        case 1:
           //  bairituLabel.text = "\(dictionay[0]["rate"]!)"
            bairitu6.selectedSegmentIndex = 0
             bairituLabel.text = "50倍"
        case 2:
            // bairituLabel.text = "\(dictionay[0]["rate"]!)"
            bairitu6.selectedSegmentIndex = 2
            bairituLabel.text = "26.2倍"
        default:
            print("該当なし")
        }
    }
    // 1試合目BETボタン
    @IBAction func betBottun1(_ sender: UIButton) {
        // かける画面に遷移
        performSegue(withIdentifier: "bet", sender: nil)
    }
    
    // ---------試合情報のラベル２---------------
    // チーム代入ラベル1
    @IBOutlet weak var teamLabel2: UILabel!
    // チーム代入ラベル2
    @IBOutlet weak var teamLabel22: UILabel!
    // 日付代入ラベル
    @IBOutlet weak var dayLabel2: UILabel!
    // 時間代入ラベル
    @IBOutlet weak var timeLabel2: UILabel!
    @IBOutlet weak var bairitu7: UISegmentedControl!
    // 勝ち負け選択のやつ左
    @IBAction func bairitu3(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            bairituLabel2.text = "\(dictionay[1]["rate"]!)"
            bairitu8.selectedSegmentIndex = 1
        case 1:
            bairituLabel2.text = "\(dictionay[1]["rate"]!)"
            bairitu8.selectedSegmentIndex = 0
        case 2:
            bairituLabel2.text = "\(dictionay[1]["rate"]!)"
            bairitu8.selectedSegmentIndex = 2
        default:
            print("該当なし")
        }
    }
    
    @IBOutlet weak var bairitu8: UISegmentedControl!
    // 勝ち負け選択のやつ右
    @IBAction func bairitu4(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            bairituLabel2.text = "\(dictionay[1]["rate"]!)"
            bairitu7.selectedSegmentIndex = 1
        case 1:
            bairituLabel2.text = "\(dictionay[1]["rate"]!)"
            bairitu7.selectedSegmentIndex = 0
        case 2:
            bairituLabel2.text = "\(dictionay[1]["rate"]!)"
            bairitu7.selectedSegmentIndex = 2
        default:
            print("該当なし")
        }
    }
    // 倍率出るラベル
    @IBOutlet weak var bairituLabel2: UILabel!
    
    @IBAction func betBottun2(_ sender: UIButton) {
        // かける画面に遷移
        performSegue(withIdentifier: "bet", sender: nil)
    }
}






/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */



