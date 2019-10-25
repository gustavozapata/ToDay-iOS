//
//  CustomTextField.swift
//  ToDay
//
//  Created by guquinon on 10/24/19.
//  Copyright © 2019 me.gustavozapata. All rights reserved.
//

import UIKit

class CustomTextField : UITextField {
    let padding = UIEdgeInsets(top: 0, left: 3, bottom: 3, right: 2)
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
