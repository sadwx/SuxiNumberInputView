//
//  SuxiNumberInputViewDelegate.swift
//  SuxiNumberInputView
//
//  Created by Simon on 02/08/2017.
//  Copyright © 2017 Simon. All rights reserved.
//

import Foundation

public protocol SuxiNumberInputViewDelegate: class {
    func suxiNumberInputView(_ inputView: SuxiNumberInputView, pressedKey keyCode: SuxiNumberKeyCode)
}
