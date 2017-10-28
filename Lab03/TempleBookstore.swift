//
//  TempleBookstore.swift
//  Lab03
//
//  Created by Fnu Frangky on 10/27/17.
//  Copyright © 2017 Fnu Frangky. All rights reserved.
//

import Foundation

public class TempleBookstore {
    
    let bookstore = Bookstore()
    var command = ""
    
    public func run() {
        
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
        
        self.command = readLine()!;
        
        while command != "1" && command != "2" && command != "3" && command != "4" && command != "5" && command != "6" {
            print("command is \(command)")
            print("Invalid input, try again")
            self.command = readLine()!;
        }
        
    }
    
}
