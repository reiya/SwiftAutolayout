//
//  ViewController.swift
//  SwiftAutolayout
//
//  Created by matsuki-reiya on 2016/06/22.
//  Copyright © 2016年 matsuki-reiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationbarHidden()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet var nextGameButton: UIButton!
    
    @IBAction func TouchTestButton(sender: AnyObject) {
        // 次の画面を生成しています。
        let nextViewController: GameViewController = self.storyboard?.instantiateViewControllerWithIdentifier("GameViewController") as! GameViewController
        // 次の画面へ遷移します。
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    //ナビゲーションバーを非表示
    func navigationbarHidden() {
        // ナビバーの表示を切り替える
        if let nv = navigationController {
            let hidden = !nv.navigationBarHidden
            nv.setNavigationBarHidden(hidden, animated: true)
        }
    }
}

