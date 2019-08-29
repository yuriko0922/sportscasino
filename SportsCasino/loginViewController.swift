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
    
    var singleton: Singleton = Singleton.shered
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nowPointLabel.text = "\(singleton.getNowPoint())"
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
}
