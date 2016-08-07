//
//  UIButton.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 18/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit

extension UIButton : Contentable {
    public func installContent(content: UIButtonContent) {
        let c = content

        let states : [UIControlState] = [.Normal, .Disabled, .Highlighted, .Selected]
        let vals : [UIButtonStateContent?] = [c.normal, c.disabled, c.highlighted, c.selected]

        for (val, state) in zip(vals, states) {
            if let value = val {
                switch value.text {
                case .Raw(let txt):
                    if let txt = txt {
                        setTitle(txt, forState: state)
                    }
                case .Attributed(let txt):
                    if let txt = txt {
                        setAttributedTitle(txt, forState: state)
                    }
                }

                if let image = value.image {
                    setImage(image, forState: state)
                }
                if let backgroundImage = value.backgroundImage {
                    setBackgroundImage(backgroundImage, forState: state)
                }
                if let titleColor = value.titleColor {
                    setTitleColor(titleColor, forState: state)
                }
                if let titleShadowColor = value.titleShadowColor {
                    setTitleShadowColor(titleShadowColor, forState: state)
                }
            }
        }
    }
}
