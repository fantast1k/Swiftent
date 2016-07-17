//
//  Contentable.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 17/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation


public protocol Contentable {
    associatedtype Content
    func installContent(content: Content) -> Void
}


infix operator <=== {
    associativity left
    precedence 250
}


public func <=== <E : Contentable, C where C == E.Content> (lhs : E, rhs : C) {
    lhs.installContent(rhs)
}
