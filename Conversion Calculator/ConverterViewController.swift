//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Jeffrey Freet on 4/13/18.
//  Copyright © 2018 jpfvx8. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextView!
    @IBOutlet weak var inputDisplay: UITextView!
    
    @IBAction func conversions(_ sender: Any) {
        let optionMenu = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: .actionSheet)
        
        let fToC = UIAlertAction(title: conversions[0].label, style: .default, handler:
        {
            
            (alert: UIAlertAction!) -> Void in
            self.outputDisplay.text = self.conversions[0].outputUnit
            self.inputDisplay.text = self.conversions[0].inputUnit
        })
        
        let cToF = UIAlertAction(title: conversions[1].label, style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            self.outputDisplay.text = self.conversions[1].outputUnit
            self.inputDisplay.text = self.conversions[1].inputUnit
        })
        
        let mToKm = UIAlertAction(title: conversions[2].label, style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            self.outputDisplay.text = self.conversions[2].outputUnit
            self.inputDisplay.text = self.conversions[2].inputUnit
        })
        
        let kmToM = UIAlertAction(title: conversions[3].label, style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            self.outputDisplay.text = self.conversions[3].outputUnit
            self.inputDisplay.text = self.conversions[3].inputUnit
        })

        optionMenu.addAction(fToC)
        optionMenu.addAction(cToF)
        optionMenu.addAction(mToKm)
        optionMenu.addAction(kmToM)
        self.present(optionMenu, animated: true, completion: nil)    }
    
    struct Conversion {
        let label: String?
        let inputUnit: String?
        let outputUnit: String?
    }
    
    let conversions = [
        Conversion(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
        Conversion(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
        Conversion(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
        Conversion(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputDisplay.text = conversions[0].inputUnit
        outputDisplay.text = conversions[0].outputUnit
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
