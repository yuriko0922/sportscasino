//
//  GameViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/26.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    // 倍率の数字demo
    var matchRate = 2000
    
    var dictionay: [[String: Any]] = [[:]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView()
        
        //scrollViewの大きさを設定。
        scrollView.frame = self.view.frame
        
        //スクロール領域の設定
        scrollView.contentSize = CGSize(width:self.view.frame.width, height:1000)
        
        //scrollViewをviewのSubViewとして追加
        self.view.addSubview(scrollView)
        
        
        
        
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
            ["team": "アメリカ", "team2": "日本", "day": myDate, "rate": "\(self.matchRate)"],
            ["team": "フランス", "team2": "イタリア", "day": myDateSecond, "rate": "\(self.matchRate)"],
            ["team": "ブラジル", "team2": "カナダ", "day": myDateThird, "rate": "\(self.matchRate)"]
        ]
        
        // 1番上の試合
        dayLabel1.text = "\(dictionay[0]["day"] ?? "")"
        teamLabel1.text = "\(dictionay[0]["team"] ?? "")"
        teamLabel21.text = "\(dictionay[0]["team2"] ?? "")"
        // 2番目の試合
        dayLabel2.text = "\(dictionay[1]["day"] ?? "")"
        teamLabel2.text = "\(dictionay[1]["team"] ?? "")"
        teamLabel22.text = "\(dictionay[1]["team2"] ?? "")"
    }
    
    // -------- 試合情報1 ----------------------------
    // 日付代入ラベル
    @IBOutlet weak var dayLabel1: UILabel!
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



