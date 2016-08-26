//
//  UITextViewContent.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 26/08/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation


public struct UITextViewContent {
    let text : Text

    public init(text : Text) {
        self.text = text
    }

    public static let None = UITextViewContent(text: Text.Raw(nil))
}
