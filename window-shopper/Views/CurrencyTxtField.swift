//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Justin Dearden on 2018-02-07.
//  Copyright © 2018 Justin Dearden. All rights reserved.
//

import UIKit

@IBDesignable //class to make the changes visible in interface builder


class CurrencyTxtField: UITextField {
    
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8006622779, green: 0.8006622779, blue: 0.8006622779, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2698796988, green: 0.2698868215, blue: 0.269882977, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current //Automatically display currency symbol based on region on user
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    //This will upload the changes to the interface builder
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
  
    }
    
    //This custom func can be called to load into IB and make changes on run time to the view (because both cant be done with code in each view)
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25) //type in colorLiteral and you can pick a color
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            //initalize this line with the above if, as a safety check
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
    }
    
    

}
