//
//  OkResultViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/28.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class OkResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // 結果の日時ラベル
    @IBOutlet weak var resultDayLabel: UILabel!
    
    // 結果のチームラベル1
    @IBOutlet weak var resultTeamLabel1: UILabel!
    
     // 結果のチームラベル2
    @IBOutlet weak var resultTeamLabel2: UILabel!
    
    // 結果の的中おR外れラベル
    @IBOutlet weak var resultBetLabel: UILabel!
    
    // 結果のポイント変動ラベル
    @IBOutlet weak var resultPointLabel: UILabel!
    
    

}
