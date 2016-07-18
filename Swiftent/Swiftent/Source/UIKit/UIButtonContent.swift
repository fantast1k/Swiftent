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
}

public struct UIButtonStateContent {
    let text : Text
    let image : UIImage?
}

#endif
