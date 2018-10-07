# SuxiNumberInputView

[![CI Status](http://img.shields.io/travis/sadwx/SuxiNumberInputView.svg?style=flat)](https://travis-ci.org/sadwx/SuxiNumberInputView)
[![Version](https://img.shields.io/cocoapods/v/SuxiNumberInputView.svg?style=flat)](http://cocoapods.org/pods/SuxiNumberInputView)
[![License](https://img.shields.io/cocoapods/l/SuxiNumberInputView.svg?style=flat)](http://cocoapods.org/pods/SuxiNumberInputView)
[![Platform](https://img.shields.io/cocoapods/p/SuxiNumberInputView.svg?style=flat)](http://cocoapods.org/pods/SuxiNumberInputView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage
Use SuxiNumberInputView like below:

```swift
let textFieldInputView = SuxiNumberInputView().bindTo(textField: textField)
// This is optional
textFieldInputView?.delegate = self

let textViewInputView = SuxiNumberInputView().bindTo(textView: textView)
// This is optional
textViewInputView?.delegate = self
```
And your UITextField or UITextView should work as usual.

Notice that SuxiNumberInputView will automatically change keyboard type to number pad when binding.

SuxiNumberInputView does very simple check to avoid incorrect number format. Currently only support floating number format.

SuxiNumberInputViewDelegate provides information to you to know what button is tapped:

```swift
func suxiNumberInputView(_ inputView: SuxiNumberInputView, pressedKey keyCode: SuxiNumberKeyCode)
```

The SuxiNumberKeyCode enum
```swift
enum SuxiNumberKeyCode {
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
}
```
You can use ```keyCode.value``` to obtain the raw value of the keycode, delete and done keycode return empty string. 

## Screen Shot
![Screen Shot](https://github.com/sadwx/SuxiNumberInputView/blob/master/ScreenShot.png?raw=true)

## Requirements

iOS 10.0+

## Installation

SuxiNumberInputView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SuxiNumberInputView"
```

## Author

simon.lin

## License

SuxiNumberInputView is available under the MIT license. See the LICENSE file for more info.
