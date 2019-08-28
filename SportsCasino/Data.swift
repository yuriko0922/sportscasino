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
    
    init(nowPoint: Int, textFieldNum: Int, dictionay: [[String: Any]]) {
        self.nowPoint = nowPoint
        self.textFieldNum = textFieldNum
        self.dictionay = dictionay
        
    }
}
// singleton
class Singleton: NSObject {
    var data = Data(nowPoint: 0, textFieldNum: 0, dictionay: [[:]])
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
    
    func getNowPoint() -> Int {
        return data.nowPoint
    }
    func getTextFieldNum() -> Int {
        return data.textFieldNum
    }
    func dictionay() -> [[String: Any]] {
        return data.dictionay
    }
    
}



