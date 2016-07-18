//
//  UIButtonContent.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 18/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#if os(iOS)
import Foundation

public struct UIButtonContentComposition {
    let normal : UIButtonContent?
    let highlighted : UIButtonContent?
    let disabled : UIButtonContent?
    let selected : UIButtonContent?
}

struct UIButtonContent {
    let text : Text
    let image : UIImage?
}

#endif
