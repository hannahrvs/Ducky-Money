// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct DuckShopData: Identifiable {
    
    let id = UUID()
    var name: String
    var type: String
    var price: Int
    var image: String
}

let items = [
    
    DuckShopData(name: "Knife", type: "hold", price: 100, image: "Knife"),
    DuckShopData(name: "Sparkler", type: "hold", price: 200, image: "sparkler"),
    DuckShopData(name: "Daisy", type: "hold", price: 300, image: "daisy"),
    DuckShopData(name: "Magic wand", type: "hold", price: 400, image: "magicwand"),
    DuckShopData(name: "Boba", type: "hold", price: 500, image: "boba"),
    
    
    DuckShopData(name: "Party hat", type: "head", price: 100, image: "partyhat"),
    DuckShopData(name: "Leaf", type: "head", price: 200, image: "leaf"),
//    DuckShopData(name: "Bunny ears", type: "head", price: 300, image: ""),
//    DuckShopData(name: "Crown", type: "head", price: 400, image: ""),
//    DuckShopData(name: "Headphones", type: "head", price: 500, image: ""),
]

