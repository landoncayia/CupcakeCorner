//
//  CheckoutView.swift
//  CupcakeCorner
//
//  Created by Landon Cayia on 8/1/22.
//

import SwiftUI

/// A view for presenting an overview of an order and a confirmation button.
struct CheckoutView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        Text("Checkout view")
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}
