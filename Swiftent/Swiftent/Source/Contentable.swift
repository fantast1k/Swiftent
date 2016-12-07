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
    func installContent(_ content: Content) -> Void
}


infix operator <=== : MultiplicationPrecedence


public func <=== <E : Contentable, C> (lhs : E, rhs : C) where C == E.Content {
    lhs.installContent(rhs)
}
