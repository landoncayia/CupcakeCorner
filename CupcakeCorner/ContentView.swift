//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Landon Cayia on 8/1/22.
//

import SwiftUI

/// The main view for Cupcake Corner, presenting options for the quantity, type, and special requests for cupcakes.
struct ContentView: View {
    @ObservedObject var orderWrapper = OrderWrapper(order: Order())
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Select your cake type", selection: $orderWrapper.order.type) {
                        ForEach(Order.types.indices, id: \.self) {
                            Text(Order.types[$0])
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Stepper("Number of cakes: \(orderWrapper.order.quantity)", value: $orderWrapper.order.quantity, in: 3...20)
                }
                
                Section {
                    Toggle("Any special requests?", isOn: $orderWrapper.order.specialRequestEnabled.animation())
                    
                    if orderWrapper.order.specialRequestEnabled {
                        Toggle("Add extra frosting", isOn: $orderWrapper.order.extraFrosting)
                        
                        Toggle("Add extra sprinkles", isOn: $orderWrapper.order.addSprinkles)
                    }
                }
                
                Section {
                    NavigationLink {
                        AddressView(orderWrapper: orderWrapper)
                    } label: {
                        Text("Delivery details")
                    }
                }
            }
            .navigationTitle("Cupcake Corner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
