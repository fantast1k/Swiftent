//
//  UIButton.swift
//  Swiftent
//
//  Created by Dmitry Fa[n]tastik on 18/07/2016.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

#if os(iOS)
import UIKit

extension UIButton : Contentable {
    public func installContent(content: UIButtonContentComposition) {
        let c = content

        let states : [UIControlState] = [.Normal, .Disabled, .Highlighted, .Selected]
        let vals : [UIButtonContent?] = [c.normal, c.disabled, c.highlighted, c.selected]

        for (val, state) in zip(vals, states) {
            if let value = val {
                switch value.text {
                case .Raw(let text):
                    setTitle(text, forState: state)
                case .Attributed(let text):
                    setAttributedTitle(text, forState: state)
                }

                setImage(value.image, forState: state)
            }
        }
    }
}
#endif
