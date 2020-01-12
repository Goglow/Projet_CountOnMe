//
//  Operation.swift
//  CountOnMe
//
//  Created by Waggle Glow on 11/01/2020.
//  Copyright © 2020 Vincent Saluzzo. All rights reserved.
//

import Foundation

struct Operation {
    var calculation = ""
    var presentResult = false
    
    
 /*   var elements: [String] {
        return calculation.split(separator: " ").map { "\($0)" }
    }
   
    
    // Error check computed variables
    var expressionIsCorrect: Bool {
        return elements.last != "+" && elements.last != "-" && elements.last != "x" && elements.last != "÷"
    }
    
    var expressionHaveEnoughElement: Bool {
        return elements.count >= 3
    }
    
    var canAddOperator: Bool {
        return elements.last != "+" && elements.last != "-" && elements.last != "x" && elements.last != "÷"
    }
    
    var expressionHaveResult: Bool {
        return textView.text.firstIndex(of: "=") != nil
    }
    */
    
    
    let minimumNumber = 0
    let maximumNumber = 999
    var numberSet : Int = 0
    func didSet() {
            if numberSet > maximumNumber {
                sendNotification(name: "LimitReached")
            } else {
            sendNotification(name: "NumberSet")
            }
        }
    
    func addition() {
        
    }
    
    func soustraction() {
        
    }
    
    func multiplication() {
        
    }
    
    func division() {
        
    }
    
    private func sendNotification(name: String) {
        let name = Notification.Name(rawValue: name)
        let notification = Notification(name: name)
        NotificationCenter.default.post(notification)
    }
}
