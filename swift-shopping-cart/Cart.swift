//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Sergey Nevzorov on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    
    var items: [Item] = []
    
    
    func totalPriceInCents() -> Int {
        
        var totalCost = 0
        
        for item in items {
            
            totalCost += item.priceInCents
        }
        return totalCost
    }
    
    func addItem(item: Item) {
        
        self.items.append(item)
    }
    
    func removeItem(item: Item) {
        
        if let index = items.indexOf(item) {
            items.removeAtIndex(index)
        }
    }
    
    func itemsWithName(name: String) -> [Item] {
        
        var collectedItems: [Item] = []
        for item in items {
            if item.name == name {
                collectedItems.append(item)
            }
        }
        return collectedItems
    }
    
    func itemsWithMinimumPriceInCents(price: Int) -> [Item] {
        
        var collectedItems: [Item] = []
        for item in items {
            if item.priceInCents >= price {
                collectedItems.append(item)
            }
        }
       return collectedItems
    }
    
    func itemsWithMaximumPriceInCents(maxPrice: Int) -> [Item] {
        
        var collectedItems: [Item] = []
        
        for item in items {
            
            if item.priceInCents <= maxPrice {
                collectedItems.append(item)
            }
            
        }
        
        return collectedItems
    }
    
}















