//
//  GameViewController.swift
//  SwiftAutolayout
//
//  Created by matsuki-reiya on 2016/06/23.
//  Copyright © 2016年 matsuki-reiya. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //タイマーを呼び出す。
        startTimer()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func TouchTestButton(sender: AnyObject) {
        // 次の画面を呼び出して生成しています。
        let nextViewController: ResultViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        //次の画面へ値を渡す。timerLabelのテキストを次の画面へ渡します。
        nextViewController.resultText = timerLabel.text
        // 次の画面へアニメーションをつけて遷移します。
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    //タイマーの処理
    weak var timer: NSTimer?
    var countNum = 0
    @IBOutlet var timerLabel: UILabel!
    
    // タイマー開始
    func startTimer() {
        //ラベルに最初のタイムを記載しておきます。
        timerLabel.text = "00:00.00"
        //ここで updateと言うメソッドを0.01秒ごとに呼び出すロジックを入れています。
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: #selector(GameViewController.update(_:)), userInfo: nil, repeats: true)
    }
    
    //タイマーを止めたい場合はこちらのメソッドを使っておきます。
    func stopTimer() {
        timer?.invalidate()
    }
    
    //0.01秒ごとに呼び出されます。
    @objc func update(timer: NSTimer) {
        //ここはよくある計算式だからそんなに気にせず。難しいことをやってるわけではない。
        countNum = countNum+1
        let ms = countNum % 100
        let s = (countNum - ms) / 100 % 60
        let m = (countNum - s - ms) / 6000 % 3600
        //ここで表示用のラベルに記載
        timerLabel.text = String(format: "%02d:%02d.%02d", m, s, ms)
    }
}
