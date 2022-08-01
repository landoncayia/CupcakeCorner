//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Landon Cayia on 8/1/22.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        Text("Delivery details view")
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
