//
//  ViewController.swift
//  Assignment1
//
//  Created by Name: Sarthak Vashistha on 2022-09-24
//Student ID: 301245284
//Name: Neha patel
//Student ID:301280513
//This is the UI design of a calculator which has all the buttons in iphone 13 pro for IOS 16.0 in Xcode 14.0

import UIKit

class ViewController: UIViewController {

    //result label
    @IBOutlet weak var ResultLabel: UILabel!
    var result: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Event handlers
    
    @IBAction func OperatorButton_Pressed(_ sender: UIButton) {
    }
    @IBAction func NumberButton_Pressed(_ sender: UIButton) {
        let button = sender as UIButton
        let buttonText = button.titleLabel?.text
        switch(buttonText){
        case ".":
            if(!ResultLabel.text!.contains("."))
            {
                ResultLabel.text?.append(buttonText!)
            }
        default:
            if(ResultLabel.text == "0"){
                ResultLabel.text = buttonText
            }
            else{
                ResultLabel.text?.append(buttonText!)
            }
        }
    }
    
    @IBAction func ExtraButton_Pressed(_ sender: UIButton) {
        let button = sender as UIButton
        let buttonText = button.titleLabel?.text
        switch buttonText {
        case "C":
            ResultLabel.text = "0"
        default:
            if(ResultLabel.text!.count == 1 || (ResultLabel.text!.count == 2 && ResultLabel.text!.contains(".")))
            {
                ResultLabel.text = "0"
            }
            else
            {
                if(ResultLabel.text!.contains(".")){
                    ResultLabel.text?.removeLast()
                    ResultLabel.text?.removeLast()
                }else{
                    ResultLabel.text?.removeLast()
                }
            }
        }
    }
    
    
    
}

