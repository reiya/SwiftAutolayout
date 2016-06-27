//
//  ResultViewController.swift
//  SwiftAutolayout
//
//  Created by matsuki-reiya on 2016/06/23.
//  Copyright © 2016年 matsuki-reiya. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var resultLabel: UILabel!
    var resultText: String?
    override func viewDidLoad() {
        super.viewDidLoad()
       scoreResult()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //ここに勝ったか負けたかを記載してね。
    func scoreResult(){
        //ラベルに一つ前の画面の値を反映させる。
        resultLabel.text = resultText
    }
    
    @IBAction func TouchTestButton(sender: AnyObject) {
        //一番最初の画面へ戻る。
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
}
