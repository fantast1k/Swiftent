//
//  UITextView+Contentable.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 26/08/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit


extension UITextView : Contentable {

    public func installContent(content: UITextViewContent) {
        switch content.text {
        case .Raw(let txt):
            if let txt = txt {
                self.text = txt
            }
        case .Attributed(let txt):
            if let txt = txt {
                self.attributedText = txt
            }
        }
    }
}

