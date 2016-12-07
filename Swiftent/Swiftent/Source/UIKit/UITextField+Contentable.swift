//
//  UITextField+Contentable.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 06/08/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit


extension UITextField : Contentable {
    public typealias Content = UITextFieldContent

    public func installContent(_ content: UITextFieldContent) {
        if let text = content.text {
            switch text {
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

        if let placeholder = content.placeholder {
            switch placeholder {
            case .Raw(let placeholder):
                if let placeholder = placeholder {
                    self.placeholder = placeholder
                }
            case .Attributed(let placeholder):
                if let placeholder = placeholder {
                    self.attributedPlaceholder = placeholder
                }
            }
        }
    }
}
