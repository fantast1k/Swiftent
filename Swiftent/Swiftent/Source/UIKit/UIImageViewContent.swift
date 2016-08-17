//
//  UIImageViewContent.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 17/08/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation


public struct UIImageViewContent {
    let image : UIImage?
    let highlightedImage : UIImage?

    public init(image: UIImage? = nil, highlightedImage: UIImage? = nil) {
        self.image = image
        self.highlightedImage = highlightedImage
    }
}
