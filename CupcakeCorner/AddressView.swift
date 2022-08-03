//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Landon Cayia on 8/1/22.
//

import SwiftUI

/// A view for presenting the delivery details of a cupcake order, as well as a link to a view for checking out.
struct AddressView: View {
    @ObservedObject var orderWrapper: OrderWrapper
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $orderWrapper.order.name)
                TextField("Street address", text: $orderWrapper.order.streetAddress)
                TextField("City", text: $orderWrapper.order.city)
                TextField("Zip", text: $orderWrapper.order.zip)
            }
            
            Section {
                NavigationLink {
                    CheckoutView(orderWrapper: orderWrapper)
                } label: {
                    Text("Check out")
                }
            }
            .disabled(orderWrapper.order.hasValidAddress == false)
        }
        .navigationTitle("Delivery details")
        // smaller, centered navigation title
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddressView(orderWrapper: OrderWrapper(order: Order()))
        }
    }
}
