//
//  loginViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/22.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit


class loginViewController: UIViewController {

    // 現在のポイントを表示するラベル
    @IBOutlet weak var nowPointLabel: UILabel!
    
    // テキストフィールドに入力した数字を入れる
    var textFieldNum: Int = 0
   
    
    // 現在のポイント
    var nowPoint = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
       
    }
    
    override func viewDidLayoutSubviews() {
        
        
    }


    // 受け取る画面に遷移するためのボタン
    @IBAction func senniUketori(_ sender: UIButton) {
        // 遷移処理
        performSegue(withIdentifier: "uketoru", sender: nil)
    }
    
    // 増やす画面に遷移するためのボタン
    @IBAction func senniFuyasu(_ sender: UIButton) {
        // 遷移処理
         performSegue(withIdentifier: "fuyasu", sender: nil)
        
    }
    
   
    
    
    
    
    
    
    
   
    
    
    
    
  
    
   
    
    
        
        
    
    
    
   
    
    
    
    
    // アラートを表示する関数
    func showAlert(message: String) {
        //アラートの作成
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        //アラートのアクション(ボタン部分の定義）
        let close = UIAlertAction(title: "閉じる", style: .cancel, handler: nil)
        //作成したアラートに閉じるボタン追加
        alert.addAction(close)
        //アラートを表示する
        present(alert,animated: true, completion: nil)
    }

}
