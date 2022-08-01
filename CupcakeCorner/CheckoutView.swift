//
//  CheckoutView.swift
//  CupcakeCorner
//
//  Created by Landon Cayia on 8/1/22.
//

import SwiftUI

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
