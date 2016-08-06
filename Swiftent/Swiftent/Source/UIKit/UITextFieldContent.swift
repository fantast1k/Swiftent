//
//  UITextFieldContent.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 06/08/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit

public struct UITextFieldContent {
    let text : Text?
    let placeholder : Text?

    public init(text : Text) {
        self.text = text
        self.placeholder = nil
    }

    public init(placeholder : Text) {
        self.text = nil
        self.placeholder = placeholder
    }

    public init(text : Text?, placeholder : Text?) {
        self.text = text
        self.placeholder = placeholder
    }
}
