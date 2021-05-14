//
//  SwiftUIView.swift
//  TravelUI
//
//  Created by Madeleine Gradney on 5/13/21.
//

import SwiftUI

struct DisModel: Identifiable{
    var id = UUID().uuidString
    var image : String
    var title: String
    var price: String
}

var disItem = [
    DisModel(image: "r1", title: "Potato", price: "$3.00"),
    DisModel(image: "r2", title: "Cookies", price: "$3.00"),
    DisModel(image: "r3", title: "Fresh Bread", price: "$3.00"),
    DisModel(image: "r4", title: "Watermelon", price: "$3.00"),
    DisModel(image: "r5", title: "Changing", price: "$3.00"),
]


