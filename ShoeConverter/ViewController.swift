//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Vaibhav's Devbox on 12/10/14.
//  Copyright (c) 2014 VP App Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womenShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womenConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!

        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Format"
    
    }
    
    

    @IBAction func womenConversionPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womenShoeSizeTextField.text as NSString).doubleValue)
        
        let conversionConstant = 30.5
        womenConvertedShoeSizeLabel.hidden = false
        
        womenConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Format"
    }

}

