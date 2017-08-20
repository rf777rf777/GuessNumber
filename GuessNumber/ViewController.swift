//
//  ViewController.swift
//  GuessNumber
//
//  Created by Syashin on 2017/8/14.
//  Copyright © 2017年 Syashin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var guessText: UITextField!
  
    //建立一個GetTheAnswer類別的物件 名為answer
    var answer = GetTheAnswer()
    
    @IBAction func guessButton(_ sender: UIButton) {
        //每次按下guessButton 會呼叫answer物件中的compareNumber函式 並將該韓式回傳的字串存入resultLabel
        resultLabel.text = answer.compareNumber(inputText: guessText.text!)
        guessText.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //讓guessText控制項第一個回應 即可讓鍵盤在城市載入完畢後自動滑出
        guessText.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

