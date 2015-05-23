//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Gordon Gauss on 5/22/15.
//  Copyright (c) 2015 Gordon Gauss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var menShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        var sizeFromTextField = menShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    
    }

    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let constantConversion:Double = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + constantConversion)" + " in European sizes"
    
    
    }

    
    
    
}

