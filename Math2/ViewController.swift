//
//  ViewController.swift
//  Math2
//
//  Created by 吉村花菜 on 2024/04/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let AnswerPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"correctA")!.data)
    let NotAnswerPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"incorrectA")!.data)
    
    var number: Int!
    var number1: Int!
    var number2: Int!
    var number3: Int!
    
    var num1: String!
    var num2: String!
    var num3: String!

    var Anumber1: Int!
    var Anumber2: Int!
    var Anumber3: Int!
    var Anumber4: Int!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var AnswerNumber1: UIButton!
    @IBOutlet var AnswerNumber2: UIButton!
    @IBOutlet var AnswerNumber3: UIButton!
    @IBOutlet var AnswerNumber4: UIButton!
    @IBOutlet var AnswerNumber5: UIButton!
    @IBOutlet var MarkButton1: UIButton!
    @IBOutlet var MarkButton2: UIButton!
    @IBOutlet var calculatButton1: UIButton!
    @IBOutlet var calculatButton2: UIButton!
    @IBOutlet var calculatButton3: UIButton!
    @IBOutlet var calculatButton4: UIButton!
    @IBOutlet var numberButon1: UIButton!
    @IBOutlet var numberButon2: UIButton!
    @IBOutlet var numberButon3: UIButton!
    @IBOutlet var numberButon4: UIButton!
    @IBOutlet var numberButon5: UIButton!
    @IBOutlet var numberButon6: UIButton!
    @IBOutlet var numberButon7: UIButton!
    @IBOutlet var numberButon8: UIButton!
    @IBOutlet var numberButon9: UIButton!
    
    
    var select = 0
    

    override func viewDidLoad() {
        based()
        label1.layer.cornerRadius = 10
        label1.clipsToBounds = true
        super.viewDidLoad()
        
        label2.layer.cornerRadius = 10
        label2.clipsToBounds = true
        super.viewDidLoad()
        
        set(button: numberButon1, str: "1")
        set(button: numberButon2, str: "2")
        set(button: numberButon3, str: "3")
        set(button: numberButon4, str: "4")
        set(button: numberButon5, str: "5")
        set(button: numberButon6, str: "6")
        set(button: numberButon7, str: "7")
        set(button: numberButon8, str: "8")
        set(button: numberButon9, str: "9")
    }
    
    @IBAction func backhomeButton(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButton(){
        
        
        set(button: AnswerNumber1, str: "0")
        set(button: AnswerNumber2, str: "0")
        set(button: AnswerNumber3, str: "0")
        set(button: AnswerNumber4, str: "0")
        set(button: AnswerNumber5, str: "0")
        set(button: MarkButton1, str: "?")
        set(button: MarkButton2, str: "?")
        
        
        based()
    }
    
    
    @IBAction func changeButton1(){
        select = 1
    }
    
    @IBAction func changeButton2(){
        select = 2
    }
    
    @IBAction func changeButton3(){
        select = 3
    }
    
    @IBAction func changeButton4(){
        select = 4
    }
    
    @IBAction func markcheck1(){
        select = 5
    }
    
    @IBAction func markcheck2(){
        select = 6
    }
    
    
    @IBAction func plus(){
        if(select == 5){
            MarkButton1.titleLabel?.adjustsFontSizeToFitWidth = true
            set(button: MarkButton1, str: "+")
        }else if(select == 6){
            set(button: MarkButton2, str: "+")
            
        }
    }
    
    @IBAction func minus(){
        if(select == 5){
            set(button: MarkButton1, str: "-")
        }else if(select == 6){
            set(button: MarkButton2, str: "-")
        }
    }
    @IBAction func times(){
        if(select == 5){
            set(button: MarkButton1, str: "×")
        }else if(select == 6){
            set(button: MarkButton2, str: "×")
        }
    }
    @IBAction func division(){
        if(select == 5){
            set(button: MarkButton1, str: "÷")
        }else if(select == 6){
            set(button: MarkButton2, str: "÷")
        }
    }
    
    
    
    @IBAction func numberCard1(){
        if(select == 1){
            set(button: AnswerNumber1, str: self.num1)
        }else if(select == 2){
            set(button: AnswerNumber2, str: self.num1)
        }else if(select == 4){
            set(button: AnswerNumber5, str: self.num1)
        }
        
    }
    
    @IBAction func numberCard2(){
        if(select == 1){
            set(button: AnswerNumber1, str: self.num2)
        }else if(select == 2){
            set(button: AnswerNumber2, str: self.num2)
        }else if(select == 4){
            set(button: AnswerNumber5, str: self.num2)
        }
    }
    
    @IBAction func numberCard3(){
        if(select == 1){
            set(button: AnswerNumber1, str: self.num3)
        }else if(select == 2){
            set(button: AnswerNumber2, str: self.num3)
        }else if(select == 4){
            set(button: AnswerNumber5, str: self.num3)
        }
    }
    
    @IBAction func sameNumber1(){
        set(button: AnswerNumber3, str: "1")
        set(button: AnswerNumber4, str: "1")
    }
    
    @IBAction func sameNumber2(){
        set(button: AnswerNumber3, str: "2")
        set(button: AnswerNumber4, str: "2")
    }
    
    @IBAction func sameNumber3(){
        set(button: AnswerNumber3, str: "3")
        set(button: AnswerNumber4, str: "3")
    }
    
    @IBAction func sameNumber4(){
        set(button: AnswerNumber3, str: "4")
        set(button: AnswerNumber4, str: "4")
    }
    
    @IBAction func sameNumber5(){
        set(button: AnswerNumber3, str: "5")
        set(button: AnswerNumber4, str: "5")
    }
    
    @IBAction func sameNumber6(){
        set(button: AnswerNumber3, str: "6")
        set(button: AnswerNumber4, str: "6")
    }
    
    @IBAction func sameNumber7(){
        set(button: AnswerNumber3, str: "7")
        set(button: AnswerNumber4, str: "7")
    }
    
    @IBAction func sameNumber8(){
        set(button: AnswerNumber3, str: "8")
        set(button: AnswerNumber4, str: "8")
    }
    
    @IBAction func sameNumber9(){
        set(button: AnswerNumber3, str: "9")
        set(button: AnswerNumber4, str: "9")
    }
    
    @IBAction func AnswerCheckButton(){
        
        var answerText1:String=MarkButton1.currentTitle ?? ""
        var answerText2:String=MarkButton2.currentTitle ?? ""
        var currentNumber1: Int = 0
        var currentNumber2: Int = 0
        
        Anumber1 = Int(num1)
        Anumber2 = Int(num2)
        Anumber3 = Int(num3)
        if answerText1 == "+"{
            currentNumber1 = Anumber1 + Anumber2
        }else if answerText1 == "-"{
            currentNumber1 = Anumber1 - Anumber2
        }else if answerText1 == "×"{
            currentNumber1 = Anumber1 * Anumber2
        }
        
        if answerText1 == "÷"{
            while(currentNumber1 == 0){
                currentNumber1 = Anumber1 - Anumber2
                if currentNumber1 < Anumber2{
                    break
                }
            }
        }
            
        if answerText2 == "+"{
            currentNumber2 = currentNumber1 + Anumber3
        }else if answerText2 == "-"{
            currentNumber2 = currentNumber1 - Anumber3
        }else if answerText2 == "×"{
            currentNumber2 = currentNumber1 * Anumber3
        }
        
        if answerText1 == "÷"{
            while(currentNumber2 == 0){
                currentNumber2 = currentNumber1 - Anumber3
                if currentNumber2 < Anumber3{
                    break
                }
            }
        }
        
        if currentNumber2 == number{
            AnswerPlayer.play()
            print("正解")
        }else {
            NotAnswerPlayer.play()
            print("不正解")
        }
    }
    
    func based(){
        number = Int.random(in: 1...40)
        number1 = Int.random(in: 1...9)
        number2 = Int.random(in: 1...9)
        number3 = Int.random(in: 1...9)
        
        num1 = String(number1)
        num2 = String(number2)
        num3 = String(number3)

        
        label1.text = String(number)
        label2.text = String(number)
        set(button: Button1, str: self.num1)
        set(button: Button2, str: self.num2)
        set(button: Button3, str: self.num3)
        
        
    }
    
    func set(button: UIButton,str: String) {
        button.configurationUpdateHandler = { button in
            var config = button.configuration
            config?.title = str
            config?.attributedTitle?.font = UIFont.systemFont(ofSize: 43)
            button.configuration = config
        }
    }
}


