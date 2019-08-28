//
//  data.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/23.
//  Copyright © 2019 yurityann. All rights reserved.
//

import Foundation


class Data {
    
    
    // テキストフィールドに入力した数字を入れる
    var textFieldNum: Int
    
    // 現在のポイント
    var nowPoint: Int
    // 辞書
    var dictionay: [[String: Any]]
    
    // 倍率の数字demo
    var matchRate: Int
    
    // 試合日時１
    let string: String
    let myDate: Date
    
    
    
    
    
    // 書く場所ないからファンクション作ってみたけど合ってんのかな
    func timeData() {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 9)
        
        // 試合のいろんな情報
        dictionay = [
            ["team": "アメリカ", "team2": "日本", "day": myDate, "rate": "\(self.matchRate)"],
            /*  ["team": "フランス", "team2": "イタリア", "day": myDateSecond, "rate": "\(self.matchRate)"],
             ["team": "ブラジル", "team2": "カナダ", "day": myDateThird, "rate": "\(self.matchRate)"] */
        ]
    }
    
    
    
    init(nowPoint: Int, textFieldNum: Int, dictionay: [[String: Any]], string: String, myDate: Date, matchRate: Int) {
        self.nowPoint = nowPoint
        self.textFieldNum = textFieldNum
        self.dictionay = dictionay
        self.string = string
        self.myDate = myDate
        self.matchRate = matchRate
    }
}
// singleton
class Singleton: NSObject {
    var data = Data(nowPoint: 0, textFieldNum: 0, dictionay: [[:]], string: "", myDate: Date(), matchRate: 0)
    static let shered: Singleton = Singleton()
    override init() {
    }
    
    func saveNowPoint(nowPoint: Int) {
        data.nowPoint = nowPoint
    }
    func saveTextFieldNum(textFieldNum: Int) {
        data.textFieldNum = textFieldNum
    }
    
    func saveDictionay(dictionay: [[String: Any]]) {
        data.dictionay = dictionay
    }
    
    func getDictionay() -> [[String: Any]] {
        return data.dictionay
    }
    
    func SaveString() -> String {
        return data.string
    }
    
    func MyDate() -> Date {
        return data.myDate
    }
    
    func saveMatchRate() -> Int {
        return data.matchRate
    }
    
    func getNowPoint() -> Int {
        return data.nowPoint
    }
    func getTextFieldNum() -> Int {
        return data.textFieldNum
    }
   
    
    func getString() -> String {
        return data.string
    }
    
    func getMyDate() -> Date {
        return data.myDate
    }
    
    func getMatchRate() -> Int {
        return data.matchRate
    }
    
    
}


