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
    
    init(nowPoint: Int, textFieldNum: Int) {
        self.nowPoint = nowPoint
        self.textFieldNum = textFieldNum
        
        
    }
}
// singleton
class Singleton: NSObject {
    var data = Data(nowPoint: 0, textFieldNum: 0)
    static let shered: Singleton = Singleton()
    override init() {
    }
    
    func saveNowPoint(nowPoint: Int) {
        data.nowPoint = nowPoint
    }
    func saveTextFieldNum(textFieldNum: Int) {
        data.textFieldNum = textFieldNum
    }
    
    func getNowPoint() -> Int {
        return data.nowPoint
    }
    func getTextFieldNum() -> Int {
        return data.textFieldNum
    }
    
}



