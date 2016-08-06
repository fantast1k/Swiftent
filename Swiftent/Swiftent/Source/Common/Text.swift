//
//  Text.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 18/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation

public enum Text {
    case Raw(String?)
    case Attributed(NSAttributedString?)

    public init(val : String) {
        self = .Raw(val)
    }

    public init(val : NSAttributedString) {
        self = .Attributed(val)
    }
}
