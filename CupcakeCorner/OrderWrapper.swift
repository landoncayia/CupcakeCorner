//
//  OrderWrapper.swift
//  CupcakeCorner
//
//  Created by Landon Cayia on 8/3/22.
//

import SwiftUI

class OrderWrapper: ObservableObject {
    @Published var order: Order
    
    init(order: Order) {
        self.order = order
    }
}
