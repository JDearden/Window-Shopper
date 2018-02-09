//
//  Wage.swift
//  window-shopper
//
//  Created by Justin Dearden on 2018-02-08.
//  Copyright © 2018 Justin Dearden. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
