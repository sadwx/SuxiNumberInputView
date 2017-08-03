//
//  SuxiNumberInputView.swift
//  SuxiNumberInputView
//
//  Created by Simon on 02/08/2017.
//  Copyright © 2017 Simon. All rights reserved.
//

import Foundation
import UIKit

public class SuxiNumberInputView: UIView {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonDot: UIButton!
    @IBOutlet weak var buttonBackspace: UIButton!
    @IBOutlet weak var buttonDone: UIButton!

    // MARK: private fields
    private let buttonKeyCodes: [SuxiNumberKeyCode] = [.zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine, .dot, .delete, .done]
    private var textField: UITextField?
    private var textView: UITextView?

    // MARK: public fields
    public weak var delegate: SuxiNumberInputViewDelegate?

    // MARK: public functions
    @discardableResult
    public func bindTo(textField: UITextField) -> SuxiNumberInputView? {
        let bundle = Bundle(for: self.classForCoder)
        let inputView = bundle.loadNibNamed("SuxiNumberInputView", owner: nil, options: nil)?.first as? SuxiNumberInputView
        inputView?.textField = textField
        textField.keyboardType = .numberPad
        textField.inputView = inputView
        return inputView
    }

    @discardableResult
    public func bindTo(textView: UITextView) -> SuxiNumberInputView? {
        let bundle = Bundle(for: self.classForCoder)
        let inputView = bundle.loadNibNamed("SuxiNumberInputView", owner: nil, options: nil)?.first as? SuxiNumberInputView
        inputView?.textView = textView
        textView.keyboardType = .numberPad
        textView.inputView = inputView
        return inputView
    }

    // MARK: IBActions
    @IBAction func keyPressed(_ sender: Any) {
        let keyCode = buttonKeyCodes[(sender as! UIButton).tag]

        defer {
            delegate?.suxiNumberInputView(self, pressedKey: keyCode)
        }

        switch keyCode {
        case .dot:
            if let textField = textField, let text = textField.text, text.contains(keyCode.value) || text.isEmpty {
                return
            }

            if let textView = textView, textView.text.contains(keyCode.value) || textView.text.isEmpty {
                return
            }

        case .delete:
            textField?.deleteBackward()
            textView?.deleteBackward()
            return

        case .done:
            textField?.endEditing(true)
            textView?.endEditing(true)
            return

        default:
            break
        }

        textField?.insertText(keyCode.value)
        textView?.insertText(keyCode.value)
    }
}

public enum SuxiNumberKeyCode {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case zero
    case dot
    case delete
    case done

    var value: String {
        switch self {
        case .zero:
            return "0"
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .dot:
            return "."
        default:
            return ""
        }
    }
}
