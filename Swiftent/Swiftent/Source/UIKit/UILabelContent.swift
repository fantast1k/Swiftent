//
//  UILabelContent.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 18/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit

public struct UILabelContent {
    let text : Text

    public init(text : Text) {
        self.text = text
    }

    public static let None = UILabelContent(text: Text.Raw(nil))
}
