//
//  UIButton.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 18/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit

extension UIButton : Contentable {
    public typealias Content = UIButtonContent
    public func installContent(_ content: UIButtonContent) {
        let c = content

        let states : [UIControlState] = [.normal, .disabled, .highlighted, .selected]
        let vals : [UIButtonStateContent?] = [c.normal, c.disabled, c.highlighted, c.selected]

        for (val, state) in zip(vals, states) {
            if let value = val {
                switch value.text {
                case .Raw(let txt):
                    if let txt = txt {
                        setTitle(txt, for: state)
                    }
                case .Attributed(let txt):
                    if let txt = txt {
                        setAttributedTitle(txt, for: state)
                    }
                }

                if let image = value.image {
                    setImage(image, for: state)
                }
                if let backgroundImage = value.backgroundImage {
                    setBackgroundImage(backgroundImage, for: state)
                }
                if let titleColor = value.titleColor {
                    setTitleColor(titleColor, for: state)
                }
                if let titleShadowColor = value.titleShadowColor {
                    setTitleShadowColor(titleShadowColor, for: state)
                }
            }
        }
    }
}
