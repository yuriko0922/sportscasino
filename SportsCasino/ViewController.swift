//
//  ViewController.swift
//  SportsCasino
//
//  Created by 津國　由莉子 on 2019/08/20.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth

class ViewController: UIViewController {
    // インスタンス化
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // メールアドレス入力するテキストフィールド
    @IBOutlet weak var emailTextField: UITextField!
    // パスワード入力するテキストフィールド
    @IBOutlet weak var passwordTextFiled: UITextField!
    
//    ユーザー新規作成ボタン
    @IBAction func createUser(_ sender: UIButton) {
    
    
        guard let email = emailTextField.text, let password = passwordTextFiled.text else {
            print("nnnn")
            // 省略
            return
        }
        // 以下追加
        // 新規アカウント作成
        Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
            // エラーがnilでない=エラーが発生しているとき
            if let error = error {
                // エラー時の処理
                print("ng")
                // エラーアラートの表示
                self.showErrorAlert(error: error)
            } else {
                // 成功した場合の処理
                self.toHome()
            print("ok")
        }
    })
    }
    
//    ログインボタン
    @IBAction func userLogin(_ sender: UIButton) {
        guard let email = emailTextField.text, let password = passwordTextFiled.text else {
            return
    }
        // FirebaseAuthのログイン処理
        Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
            if let error = error {
                print("ログイン失敗")
                // エラーアラートの表示
                self.showErrorAlert(error: error)
            } else {
                // 認証成功
                print("ログイン成功")
                
//   遷移
                self.toHome()
            }
        })
    }
    
    // エラーが帰ってきた場合のアラート
    func showErrorAlert(error: Error?) {
        
        let alert = UIAlertController(title: "エラー", message: error?.localizedDescription, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(okAction)
        // 表示
        self.present(alert, animated: true)
    }
    
    // タブバーコントローラーの画面に遷移
    func toHome() {
        // storyboardのfileの特定
        let storyboard: UIStoryboard = UIStoryboard(name: "login", bundle: nil)
        // 移動先のvcをインスタンス化
        let vc = storyboard.instantiateViewController(withIdentifier: "login")
        // 遷移処理
        self.present(vc, animated: true)
        
        
    }



}


