//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by lancers512-01 on 2020/01/11.
//  Copyright © 2020 Gunji Kamiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var countUpLabel: UILabel!
    
     var count = 0
     override func viewDidLoad() {
         super.viewDidLoad()
         countUpLabel.text = "0"
     }

     @IBAction func plus(_ sender: Any) {
         // カウントアップ
         count = count + 1
         // 反映させる(キャストで文字列型に変換させる)
         countUpLabel.text = String(count)
         // 数字が10以上になったら、色を黄色に変更させる
         if count >= 10 {
             changeTextColor()
         }
     }

     @IBAction func minus(_ sender: Any) {
         // カウントダウン
         count = count - 1
         // 反映させる(キャストで文字列型に変換させる)
         countUpLabel.text = String(count)
         // 数字が0以下になったら、色を白に変更させる
         if count <= 0 {
             resetColor()
         }
     }

     // 文字の色を変えるメソッドを追加
     func changeTextColor(){
         countUpLabel.textColor = .yellow
     }
     func resetColor(){
         countUpLabel.textColor = .white
     }
}

