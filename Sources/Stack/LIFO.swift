//
//  LIFO.swift
//  Stack
//
//  Created by Myke on 4/22/21.
//

import Foundation
import EBCLinkedList

public class LIFO<T> {
    
    private var stack = EBCLinkedList<T>()
    
    public var count: UInt {
        return stack.count
    }
    
    public init() {
    // This initializer intentionally left empty
    }
    
    public func push(_ value: T) {
        self.stack.append(value)
    }
    
    public func pop() -> T? {
       return self.stack.removeLast()
    }
    
    public func peek() -> T? {
        return self.stack.last
    }
    
}
