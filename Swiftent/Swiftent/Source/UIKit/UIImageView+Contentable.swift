//
//  UIImageView.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 17/08/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import Foundation


extension UIImageView : Contentable {
    public func installContent(content: UIImageViewContent) {
        if let img = content.image {
            image = img
        }
        if let highlightedImg = content.highlightedImage {
            highlightedImage = highlightedImg
        }
    }
}
