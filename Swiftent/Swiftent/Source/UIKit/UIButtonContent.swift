//
//  UIButtonContent.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 18/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation

public struct UIButtonContent {
    let normal : UIButtonStateContent?
    let highlighted : UIButtonStateContent?
    let disabled : UIButtonStateContent?
    let selected : UIButtonStateContent?

    public init(normal: UIButtonStateContent?,
                highlighted: UIButtonStateContent?,
                disabled: UIButtonStateContent?,
                selected: UIButtonStateContent?) {

        self.normal = normal
        self.highlighted = highlighted
        self.disabled = disabled
        self.selected = selected
    }

    public init(normal: UIButtonStateContent?) {
        self.normal = normal
        self.highlighted = nil
        self.disabled = nil
        self.selected = nil
    }

    public init(normal: UIButtonStateContent?, selected: UIButtonStateContent?) {
        self.normal = normal
        self.selected = selected
        self.disabled = nil
        self.highlighted = nil
    }
}

public struct UIButtonStateContent {
    let text : Text
    let image : UIImage?
    let titleColor : UIColor? = nil
    let titleShadowColor : UIColor? = nil
    let backgroundImage : UIImage? = nil

    public init(text: Text, image: UIImage?) {
        self.text = text
        self.image = image
    }

    public init(text: Text) {
        self.text = text
        self.image = nil
    }

    public init(image: UIImage?) {
        self.text = Text.Raw(nil)
        self.image = image
    }

    public static let None = UIButtonStateContent(text: Text.Raw(nil), image: nil)
}
