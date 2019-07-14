//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by home on 2018/04/16.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorChip: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func changedColor(_ sender: UISegmentedControl) {
        // 選ばれているインデックス番号で処理を振り分ける
        switch sender.selectedSegmentIndex {
        case 0: colorChip.backgroundColor = UIColor.blue
        case 1: colorChip.backgroundColor = UIColor.yellow
        case 2: colorChip.backgroundColor = UIColor.green
        default: colorChip.backgroundColor = UIColor.blue
        }
    }

}

