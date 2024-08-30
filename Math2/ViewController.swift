//
//  ViewController.swift
//  Math2
//
//  Created by 吉村花菜 on 2024/04/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let AnswerPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"CorrectA")!.data)
    let NotAnswerPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"IncorrectA")!.data)
    
    var ViewNumber2: Int!
    var ShortAnswer: String!
    var number1: Int!
    var number2: Int!
    var number3: Int!
    var Marknum1: Int!
    var Marknum2: Int!
    
    var num1: String!
    var num2: String!
    var num3: String!
    
    var Anumber1: Int!
    var Anumber2: Int!
    var Anumber3: Int!
    var Anumber4: Int!
    var Anumber5: Int!
    
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
    @IBOutlet var numberButon0: UIButton!
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
        
        set(button: numberButon0, str: "0")
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
    
    @IBAction func changeButton4(){
        select = 4
    }
    
    @IBAction func markcheck1(){
        select = 3
    }
    
    @IBAction func markcheck2(){
        select = 5
    }
    
    @IBAction func changeButton5(){
        select = 6
    }
    @IBAction func changeButton6(){
        select = 7
    }
    //
    //    @IBAction func changeButton8(){
    //        select = 8
    //    }
    
    @IBAction func plus(){
        if(select == 3){
            MarkButton1.titleLabel?.adjustsFontSizeToFitWidth = true
            set(button: MarkButton1, str: "+")
        }else if(select == 5){
            set(button: MarkButton2, str: "+")
        }
    }
    
    @IBAction func minus(){
        if(select == 3){
            set(button: MarkButton1, str: "-")
        }else if(select == 5){
            set(button: MarkButton2, str: "-")
        }
    }
    @IBAction func times(){
        if(select == 3){
            set(button: MarkButton1, str: "×")
        }else if(select == 5){
            set(button: MarkButton2, str: "×")
        }
    }
    @IBAction func division(){
        if(select == 3){
            set(button: MarkButton1, str: "÷")
        }else if(select == 5){
            set(button: MarkButton2, str: "÷")
        }
    }
    
    @IBAction func numberCard1(){
        if(select == 1){
            set(button: AnswerNumber1, str: self.num1)
            Anumber1 = Int(num1)
        }else if(select == 2){
            set(button: AnswerNumber2, str: self.num1)
            Anumber2 = Int(num1)
        }else if(select == 4){
            set(button: AnswerNumber5, str: self.num1)
            Anumber5 = Int(num1)
        }else if(select == 7){
            set(button: AnswerNumber4, str: self.num1)
            Anumber4 = Int(num1)
        }
        
    }
    
    @IBAction func numberCard2(){
        if(select == 1){
            set(button: AnswerNumber1, str: self.num2)
            Anumber1 = Int(num2)
        }else if(select == 2){
            set(button: AnswerNumber2, str: self.num2)
            Anumber2 = Int(num2)
        }else if(select == 4){
            set(button: AnswerNumber5, str: self.num2)
            Anumber5 = Int(num2)
        }else if(select == 7){
            set(button: AnswerNumber4, str: self.num2)
            Anumber4 = Int(num2)
        }
    }
    
    @IBAction func numberCard3(){
        if(select == 1){
            set(button: AnswerNumber1, str: self.num3)
            Anumber1 = Int(num3)
        }else if(select == 2){
            set(button: AnswerNumber2, str: self.num3)
            Anumber2 = Int(num3)
        }else if(select == 4){
            set(button: AnswerNumber5, str: self.num3)
            Anumber5 = Int(num3)
        }else if(select == 7){
            set(button: AnswerNumber4, str: self.num3)
            Anumber4 = Int(num3)
        }
    }
    
    @IBAction func sameNumber0(){
        if(select == 6){
            set(button: AnswerNumber3, str: "0")
            Anumber3 = Int(0)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "0")
            Anumber4 = Int(0)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "0")
            Anumber5 = Int(0)
        }
    }
    
    @IBAction func sameNumber1(){
        if(select == 6){
            set(button: AnswerNumber3, str: "1")
            Anumber3 = Int(1)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "1")
            Anumber4 = Int(1)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "1")
            Anumber5 = Int(1)
        }
    }
    
    @IBAction func sameNumber2(){
        if(select == 6){
            set(button: AnswerNumber3, str: "2")
            Anumber3 = Int(2)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "2")
            Anumber4 = Int(2)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "2")
            Anumber5 = Int(2)
        }
    }
    
    
    @IBAction func sameNumber3(){
        if(select == 6){
            set(button: AnswerNumber3, str: "3")
            Anumber3 = Int(3)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "3")
            Anumber4 = Int(3)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "3")
            Anumber5 = Int(3)
        }
    }
    
    @IBAction func sameNumber4(){
        if(select == 6){
            set(button: AnswerNumber3, str: "4")
            Anumber3 = Int(4)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "4")
            Anumber4 = Int(4)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "4")
            Anumber5 = Int(4)
        }
    }
    
    @IBAction func sameNumber5(){
        if(select == 6){
            set(button: AnswerNumber3, str: "5")
            Anumber3 = Int(5)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "5")
            Anumber4 = Int(5)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "5")
            Anumber5 = Int(5)
        }
    }
    
    @IBAction func sameNumber6(){
        if(select == 6){
            set(button: AnswerNumber3, str: "6")
            Anumber3 = Int(6)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "6")
            Anumber4 = Int(6)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "6")
            Anumber5 = Int(6)
        }
    }
    
    @IBAction func sameNumber7(){
        if(select == 6){
            set(button: AnswerNumber3, str: "7")
            Anumber3 = Int(7)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "7")
            Anumber4 = Int(7)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "7")
            Anumber5 = Int(7)
        }
    }
    
    @IBAction func sameNumber8(){
        if(select == 6){
            set(button: AnswerNumber3, str: "8")
            Anumber3 = Int(8)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "8")
            Anumber4 = Int(8)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "8")
            Anumber5 = Int(8)
        }
    }
    
    @IBAction func sameNumber9(){
        if(select == 6){
            set(button: AnswerNumber3, str: "9")
            Anumber3 = Int(9)
        }else if (select == 7){
            set(button: AnswerNumber4, str: "9")
            Anumber4 = Int(9)
        }else if (select == 4){
            set(button: AnswerNumber5, str: "9")
            Anumber5 = Int(9)
        }
    }
    
    
    
    @IBAction func AnswerCheckButton(){
        var answerText1:String = MarkButton1.titleLabel?.text ?? ""
        var answerText2:String = MarkButton2.titleLabel?.text ?? ""
        var currentNumber1: Int = 0
        var currentNumber2: Int = 0
        var subNumber1: Int = 0
        var subNumber2: Int = 0
        
        if answerText1 == "+"{
            currentNumber1 = Anumber1 + Anumber2
        }else if answerText1 == "-"{
            currentNumber1 = Anumber1 - Anumber2
        }else if answerText1 == "×"{
            currentNumber1 = Anumber1 * Anumber2
        }else if answerText1 == "÷"{
            while(subNumber1 < 0){
                currentNumber1 = Anumber1 / Anumber2
                subNumber1 = Anumber1 % Anumber2
                if subNumber1 == 0{
                    break
                }
            }
        }else {
            print("error")
        }

        if answerText2 == "+"{
            currentNumber2 = Anumber4 + Anumber5
        }else if answerText2 == "-"{
            currentNumber2 = Anumber4 - Anumber5
        }else if answerText2 == "×"{
            currentNumber2 = Anumber4 * Anumber5
        }else if answerText2 == "÷"{
            while(subNumber2 < 0){
                currentNumber2 = Anumber4 / Anumber5
                subNumber2 = Anumber4 % Anumber5
                if subNumber2 == 0{
                    break
                }
            }
        }else {
            print("error")
        }
        print(currentNumber2)
        
        
        if currentNumber2 == ViewNumber2{
            AnswerPlayer.play()
            print("正解")
        }else {
            NotAnswerPlayer.play()
            print("不正解")
        }
    }
    
    func based(){
        var currentNumber1: Int = 0
        var currentNumber2: Int = 0
        number1 = Int.random(in: 1...9)
        number2 = Int.random(in: 1...9)
        number3 = Int.random(in: 1...9)
        
        Marknum1 = Int.random(in: 1...4)
        Marknum2 = Int.random(in: 1...4)

        if(Marknum1 == 2){
            while(number2 > number1){
                number2 = Int.random(in: 1...9)
            }
            currentNumber1 = number1 - number2
        }else if(Marknum1 == 4){
            while(number1 % number2 != 0){
                number2 = Int.random(in: 1...9)
            }
            currentNumber1 = number1 / number2
        }else {
            number2 = Int.random(in: 1...9)
            if(Marknum1 == 1){
                currentNumber1 = number1 + number2
            }else if(Marknum1 == 3){
                currentNumber1 = number1 * number2
            }
        }

        if(Marknum2 == 2){
            while(number3 > currentNumber1){
                number3 = Int.random(in: 1...9)
            }
            currentNumber2 = currentNumber1 - number3
        }else if(Marknum2 == 4){
            while(currentNumber1 % number3 != 0){
                number3 = Int.random(in: 1...9)
            }
            currentNumber2 = currentNumber1 / number3
        }else{
                if(Marknum2 == 1){
                    currentNumber2 = currentNumber1 + number3
                }else if(Marknum2 == 3){
                    currentNumber2 = currentNumber1 * number3
                }
        }
        label1.text = String(currentNumber2)
        label2.text = String(currentNumber2)
        num1 = String(number1)
        num2 = String(number2)
        num3 = String(number3)
        set(button: Button1, str: num1)
        set(button: Button2, str: num2)
        set(button: Button3, str: num3)
        ViewNumber2 = currentNumber2
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
