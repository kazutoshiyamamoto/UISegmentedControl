//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by home on 2018/04/16.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ビューのプロパティ宣言
    @IBOutlet weak var colorChip: UIView!
    // セグメンテッドコントロールで色を選び直す
    @IBAction func changedColor(_ sender: UISegmentedControl) {
        // 選ばれているインデックス番号で処理を振り分ける
        switch sender.selectedSegmentIndex {
        case 0: colorChip.backgroundColor = UIColor.blue
        case 1: colorChip.backgroundColor = UIColor.yellow
        case 2: colorChip.backgroundColor = UIColor.green
        default: colorChip.backgroundColor = UIColor.blue
        }
    }
    
    func RGBA(red:CGFloat, green:CGFloat, blue:CGFloat, alpha:CGFloat) -> UIColor {
        // 0〜1に換算する
        let r = red/255.0
        let g = green/255/0
        let b = blue/255.0
        let rgba = UIColor(red: r, green: g, blue: b, alpha: alpha)
        return rgba
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 色を作る
        let color = RGBA(red: 100, green: 255, blue: 200, alpha: 1)
        // 背景色を指定する
        self.view.backgroundColor = color
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

