//
//  UIButtonContent.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 18/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#if os(iOS)
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

    public init(text: Text, image: UIImage?) {
        self.text = text
        self.image = image
    }
}

#endif
