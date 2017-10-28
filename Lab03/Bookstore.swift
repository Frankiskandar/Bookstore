//
//  Bookstore.swift
//  Lab03
//
//  Created by Fnu Frangky on 10/27/17.
//  Copyright © 2017 Fnu Frangky. All rights reserved.
//

import Foundation

class Bookstore {
    
    private final var books = [Book]()
    private var totalbooks :Int
    private var gross :Double
    private static let MAXNUMOFBOOKS :Int = 10
    
    
    // an Initializer that creates a new, empty Bookstore object.
    public init() {
        books = []
        totalbooks = 0
        gross = 0
    }
    
    // Adds a new Book b to the stock of the Bookstore object.
    public func addNewBook(b:Book) {
        books.append(b)
    }
    
    // Adds quantity number of books to the book already in stock in the Bookstore object with
    // the title title. If the book is not in the Bookstore object, nothing is done.
    public func addBookQuantity(title:String, quantity:Int) {
        for book in books {
            if book.getTitle() == title {
                book.addQuantity(amount: quantity)
                print("addBookQuantity success")
            }
        }
    }
    
    // Returns true if quantity or more copies of a book with the title are contained in the Bookstore object.
    public func inStock(title:String, quantity:Int)->Bool {
        for book in books {
            if book.getTitle() == title {
                if book.getQuantity() > 1 {
                    print("instock > 1")
                    return true
                }
            }
        }
        return false
    
    }
    
    // Executes selling quantity number of books from the Bookstore object with the title to the
    // buyer. (Note: there is no I/O done in this method, the Bookstore object is changed to reflect
    // the sale. The method returns true is the sale was executed successfully, false otherwise.
    public func sellBook(title:String, quantity:Int)->Bool {
        for book in books {
            if book.getTitle() == title {
                if book.getQuantity() > quantity {
                    book.subtractQuantity(amount: quantity)
                    print("sell in stock > quantity success")
                    return true
                }
            }
        }
        return false
    }
    
    // Lists all of the titles of the books in the Bookstore object.
    public func listTitles() {
        for book in books {
            print(book.getTitle())
        }
    }
    
    // Lists all of the information about the books in the Bookstore object.
    public func listBooks() {
        for book in books {
            print(book.toString())
        }
    
    }
    // Returns the total gross income of the Bookstore object.
    public func getIncome()->Double {
        return 1.0
    }
}
