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
    

   
    
    // 試合終了時刻 DateとnowTimeをdateとmyDatedに置き換えないといけないけどシングルトンできてないーーーーーーー00秒*90分*00時間*0日
  //  lazy var finishGame = dateFormatter.date(timeInterval: 00+90+00+0, since: d.)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // de-ta
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 9)
        
        
        
     //  d.dateMethod()
        let string = "2019-08-30T05:20:00Z"
//    guard let myDate = dateFormatter.date(from: string) else {
//            return
//        }
        myDate = dateFormatter.date(from: string)!
        
        let string2 = "2019-08-29T01:03:00Z"
        myDate2 = dateFormatter.date(from: string2)!
        
    
    }
    
// 結果を見るボタン
    @IBAction func lookResult(_ sender: UIButton) {
        
       // d.dateMethod()
        
        if nowTime <= myDate2 {
            // 結果観れる画面に遷移
             performSegue(withIdentifier: "ok", sender: nil)
        } else {
             performSegue(withIdentifier: "still", sender: nil)
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

}

/*
class dateList {
    let dateFormatter = DateFormatter()
    
    func dateMethod() {
        
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 9)
        
        // 試合日時１
//        let string = "2019-08-30T05:20:00Z"
//        let myDate = dateFormatter.date(from: string)!
    }
 */

