//
//  main.swift
//  Lab03
//
//  Created by Fnu Frangky on 10/27/17.
//  Copyright © 2017 Fnu Frangky. All rights reserved.
//  iOS Programming Lab 3
//

import Foundation


let bookstore = Bookstore()
var command = ""
var grossIncome = 0.0


public func runTempleBookstore() {
    
    print("Welcome to Temple Bookstore!")
    while true { // run the bookstore until user quits
        MainMenu()
        AskInput()
    }
}


public func MainMenu() {
    print("What would you like to do today?")
    print("1. Add a book")
    print("2. Sell a book")
    print("3. List of all titles")
    print("4. List all information")
    print("5. Print gross income")
    print("6. Quit")
}

public func AskInput() {
    
    command = readLine()!
    
    // command can only be 1-6
    while command != "1" && command != "2" && command != "3" && command != "4" && command != "5" && command != "6" {
        //print("command is \(command)")
        print("Invalid input, try again")
        command = readLine()!
    }
    
    if(command == "1") {
        //public func Book (theTitle: String, pages:Int, cost:Double, num: Int)
        print("What is the title of the book?")
        let title = readLine()!
        
        // if the book already exists
        if bookstore.inStock(title: title) { // if true
            print("Book is already in the database")
            print("How many quantity to add?")
            let quantity = Int(readLine()!)!
            bookstore.addBookQuantity(title: title, quantity: quantity)
        }
            // ask and add new book
        else {
            print("How many pages is it?")
            let numPages = Int(readLine()!)!
            
            print("What is the price?")
            let price = Double(readLine()!)!
            
            print("Quantity?")
            let quantity = Int(readLine()!)!
            
            // init new book
            let newBook = Book(theTitle: title, pages: numPages, cost: price, num: quantity)
            
            bookstore.addNewBook(b: newBook)
            print("Book is now in stock\n")
        }
    } // end 1
    
    // book selling
    // first, it checks if the book exists
    // if it exists, it checks if the books quantity in the inventory is bigger than the asked quantity
    // if yes, then sell!
    if command == "2" {
        print("Which book would you like to sell?")
        let title = readLine()!
        if bookstore.inStock(title: title) { // check if the book exists
            print("Book exists in the system")
            // check if there is at lease 1 stock
            if bookstore.inStock(title: title, quantity: 1) {
                print("How many copies will be sold?")
                let quantity = Int(readLine()!)!
                //if stock > 1, check if the stock is bigger than the user wants to sell, if yes, execute!
                if bookstore.inStock(title: title, quantity: quantity) {
                    if bookstore.sellBook(title: title, quantity: quantity) { //check the quantity too, if true then sell
                        print("Success! you have sold \(quantity) copy(s) of \(title)")
                    } else {
                        // stock < input
                        print("Sale failed because stock < input")
                    }
                } else { // instock fails
                    print("Failed! Book's quantity in the system is less than input")
                }
            } else {
                print("Failed! Book has no stock")
            }
        } else { // book does not exists
            print("Failed! Book does not exist in the system")
        }
    }// end 2
    
    // print the book titles only
    if command == "3" {
        print("Titles of books")
        print("================")
        bookstore.listTitles()
        print("\n")
    } // end 3
    
    // print all the book's information
    if command == "4" {
        print("List of books")
        print("================")
        bookstore.listBooks()
        print("\n")
    } // end 4
    
    // print gross income of the bookstore
    if command == "5" {
        print("Gross income: \(bookstore.getIncome())")
    } // end 5
    
    // exit the program
    if command == "6" {
        print("We hope to see you again")
        exit(0)
    } //end 6
}// end askInput

runTempleBookstore()
