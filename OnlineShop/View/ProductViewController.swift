//
//  ViewController.swift
//  OnlineShop
//
//  Created by Karthik Ravikumar on 25/06/20.
//  Copyright © 2020 Karthik Ravikumar. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    var presenter: CartPresenter!
    
    @IBOutlet weak private var totalAmount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        presenter.getFinalPrice(with: "Apple", quantity: 1, price: 10000.0, state: "UT")
        
    }
    
    
}

// MARK: - CartView

extension ProductViewController: CartView {
    func display(finalPrice: String) {
        totalAmount.text = finalPrice
    }
    
    func displayVaidationError(with message: String) {
        presentAlert(with: message)
    }
}
