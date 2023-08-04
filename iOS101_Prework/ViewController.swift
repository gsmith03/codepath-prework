//
//  ViewController.swift
//  iOS101_Prework
//
//  Created by GwenHill on 8/2/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
        let textColor1 = idealTextColor(for: randomColor)
        let textColor2 = idealTextColor(for: randomColor)
        let textColor3 = idealTextColor(for: randomColor)
        let textColor4 = idealTextColor(for: randomColor)
        
        label1.textColor = textColor1
        label2.textColor = textColor2
        label3.textColor = textColor3
        label4.textColor = textColor4
        
    }
    
    func changeColor() -> UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in : 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func idealTextColor(for backgroundColor: UIColor) -> UIColor {
        guard let components = backgroundColor.cgColor.components else {
            return UIColor.black
        }
        let brightness = (components[0]*299 + components[1] * 587 + components[2]*114)/1000
        
        return brightness > 0.5 ? UIColor.black : UIColor.white
    }
}

