//
//  HowToViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/25.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit

class HowToViewController: UIViewController {

    @IBOutlet weak var howToText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        howToText.text = "・SportsCasinoは好きな試合にポイントを賭けて遊ぶゲームです。\n\n・クレジットカードを登録し、ポイントを購入します。\n\n・ポイントは1万円で1ポイントとなります。\n\n・試合情報から賭けてみたい試合を選択し、賭けたいポイント数を入力して賭けます。\n\n・賭けポイントは1ポイントからになります。\n\n・勝ったチーム（個人競技の場合は選手）に賭けたポイントが増えます。これをあたりと呼びます。\n\n・当たると、当たった総ポイントから10%引かれたポイントが取り分となります。\n\n・会員登録をすると1ゲーム参加につき、0.1ポイントが付与されます。"
        // Do any additional setup after loading the view.
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
