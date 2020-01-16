//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Yuri Yoshinami on 2020/01/15.
//  Copyright © 2020 Angela Yu. All rights reserved.

//　return と　mutatingは、自分でかけるように！（できなかった）


import Foundation
import UIKit

struct CalculatorBrain {
    
    //var height :Float　⭐️自分で書いたけど不要みたい
    //var weight :Float　自分で書いたけど不要みたい
    var bmi : BMI?
    //var bmi : Float = 0.0
    
//    init(h: Int, w: Int, b:Int){　　　　　　　　　⭐️initを書いたら、CalculatorViewConrtollerで、エラーが出るけどなぜ？
////        height = 0.0　自分で書いたけど不要みたい　　　　このinitはどんな時に必要？
////        weight = 0.0　自分で書いたけど不要みたい
//        bmi = 0.0
//    }
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.2f", bmi?.value ?? 0.0)  //
            return bmiTo1DecimalPlace
    }

    func getAdvice() -> String{
        let resultAdvice = String(bmi?.advice ?? "defaultAdvice")//default value
            return resultAdvice
        //return bmi?.advice ?? "No advice"  でも可能
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.937254902, green: 1, blue: 0.9843137255, alpha: 1)
    }
    
//下記の書き方もある
//    func getBMIValue() -> String {
//        if let safeBMI = bmi {
//            let bmiTo1DecimalPlace = String(format: "%.2f", safeBMI)  //🌟なぜ　safeBMIではなく、bmi!ではNG?
//            return bmiTo1DecimalPlace
//        } else {
//            return "0.0"
//        }
//    }
    
    mutating func calculateBMI(height: Float, weight :Float){
      //  bmi?.value = weight / (height * height) エラーが出るため、NG
      // bmiは定数なので、letで宣言したままにしなくてはいけない。ただ、そのままその値を持ってきたい
      
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue) //UIColorは、UIKitがあるから利用できている
            print("Underweight")
        } else if bmiValue <= 24.9 { //bmiValue >= 18.5 は既に上でチェックしている
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
            print("Normal")
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
            print("Overweight")
        }
    }
    
}

