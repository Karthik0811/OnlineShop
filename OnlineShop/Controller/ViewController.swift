//
//  ViewController.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 25/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var code: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var count: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var totalAmount: UILabel!
    
    var calculationLogic = CalculationLogic()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: Any) {
        
        if let prodCount = count.text, let prodPrice = price.text, let stateCode = code.text{
            let productPrice = calculationLogic.calculatePrice(count: prodCount, unitPrice: prodPrice)
            let discountPercent = calculationLogic.discountPercent(price: productPrice)
            let taxPercent = calculationLogic.taxPercent(code: stateCode)
            let finalCartPrice = calculationLogic.cartPrice(price: productPrice, discountPercent: discountPercent, taxPercent: taxPercent)
            DispatchQueue.main.async {
                self.totalAmount.text = String(finalCartPrice)
            }

        }
        
    }


}

