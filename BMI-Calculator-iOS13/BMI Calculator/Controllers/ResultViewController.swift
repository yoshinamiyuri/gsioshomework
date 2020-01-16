//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Yuri Yoshinami on 2020/01/14.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {   //UIViewControllerは、 ResultViewControlleのsuperclass
    
    var bmiValue : String?
    var advice : String?
    var color : UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color   //ClassesとIinheritanceを見る！
    }
  
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil) //現在のUIViewControllerを退出する　　self.を削除してもいい
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
