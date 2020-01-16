//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//　segue, bmiValueの持ってき方を理解する！

import UIKit

class CalculateViewController: UIViewController {

    //var bmiValue = "0.0"
    //var calculatorBrain = CalculatorBrain
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        //Udemyでは次の書き方
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = String(" \(height)m")
        
          //下のような書き方もある
          let numRound = round(sender.value*100)/100
           print("Height is \(numRound)")
//        heightLabel.text = String(" \(numRound)m")
//        print(String(format: "%.2f", sender.value))　FloatをIntに変えても可能
    }
    

    @IBAction func weightSliderChanged(_ sender: UISlider) {
         print(String(format: "%.0f", sender.value))
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = String(" \(weight)kg")

        //print(Int(sender.value))
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight :weight)
        self.performSegue(withIdentifier: "goToResult", sender: self) //self.を削除してもいい
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {   //segue initiates the UI view controller
            if segue.identifier == "goToResult"{
                let destinationVC = segue.destination as! ResultViewController //as以下を外すと、次のbmiValueを認識しない　as --Downcasting
                destinationVC.bmiValue = calculatorBrain.getBMIValue()
                destinationVC.advice = calculatorBrain.getAdvice()
                destinationVC.color = calculatorBrain.getColor()
               // destinationVC.bmiValue = bmiValue これはエラー
            }
        }
        
}
//        height * height と pow(height,2) は同義語
//        let bmi = weight / （(height * height)はOK! ()つけないのはNG
//        print(bmi)
        
//        let secondVC = SecondViewController()  //Object created from the class
//        secondVC.bmiValue = String(bmi)
//
//        self.present(secondVC, animated: true, completion: nil)
        
        



