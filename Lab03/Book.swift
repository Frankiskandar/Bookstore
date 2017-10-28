//
//  Book.swift
//  Lab03
//
//  Created by Fnu Frangky on 10/27/17.
//  Copyright © 2017 Fnu Frangky. All rights reserved.
//

import Foundation

class Book {

    private var title :String = ""
    private var numOfPages :Int = 0
    private var price :Double = 0.0
    private var quantity :Int = 0
    
    // an Initializer: Takes in the title of the book, the number of pages in the book, the cost of the book and
    // the number of copies (quantity) of books and initializes each of the appropriate properties in
    //the object.
    public func Book (theTitle: String, pages:Int, cost:Double, num: Int) {
        self.title = theTitle
        self.numOfPages = pages
        self.price = cost
        self.quantity = num
    
    }
    // Returns the title of the Book object the method is called on.
    public func getTitle()-> String {
        return self.title
        
    }
    // Returns the price of the Book object the method is called on.
    public func getPrice()-> Double {
        return self.price
        
    }
    // Returns the quantity of the Book object the method is called on.
    public func getQuantity()-> Int {
        return self.quantity
    }
    // Returns all the information about a Book object as a String. (Add spaces or tabs to make it readable!)
    public func toString()-> String {
        let info = "Title: \(self.title)\nNumber of Pages: \(self.numOfPages)\nPrice: $\(self.price)\nQuantity: \(self.quantity)"
        
        return info
        
    }
    // Decrements the number of copies, by the given amount, for the Book object the method is called on.
    public func subtractQuantity(amount:Int) {
        self.quantity = self.quantity - amount
    }
    //Increments the number of copies, with the given amount, for the Book object the method is called on.
    public func addQuantity(amount:Int) {
        self.quantity = self.quantity + amount
    }
}

