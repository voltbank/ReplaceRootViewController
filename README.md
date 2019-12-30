# ReplaceRootViewController

[![CI Status](https://img.shields.io/travis/voltbank/ReplaceRootViewController.svg?style=flat)](https://travis-ci.org/voltbank/ReplaceRootViewController)
[![Version](https://img.shields.io/cocoapods/v/ReplaceRootViewController.svg?style=flat)](https://cocoapods.org/pods/ReplaceRootViewController)
[![License](https://img.shields.io/cocoapods/l/ReplaceRootViewController.svg?style=flat)](https://cocoapods.org/pods/ReplaceRootViewController)
[![Platform](https://img.shields.io/cocoapods/p/ReplaceRootViewController.svg?style=flat)](https://cocoapods.org/pods/ReplaceRootViewController)

## Information
This project demonstrates a fix for http://www.openradar.me/21404408

This issue has been raised by multiple Stackoverflow support pages. This pod aims to make is super easy to replace the root view controller with animations.

You will need to use the console in xcode and debugging tools (eg "debug view hierarchy") to verify that everything is working as expected. UI test is also provided.

## Attribution

This pod wouldnt be possible without the following...
- API design based on... https://github.com/malcommac/UIWindowTransitions
- Fix for memory leak provided by Stackoverflow response https://stackoverflow.com/a/27153956/8923019

## Code...

```Swift
if let window = view.window {
    window.set(rootViewController: yourReplacementViewController)
}
```

if you want you can also have a callback:..

```Swift
if let window = view.window {
    window.set(rootViewController: yourReplacementViewController) { (completed) in
        print("Root view replaced!")
    }
}
```


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

ReplaceRootViewController is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ReplaceRootViewController'
```

## Author

sushant, sushant.verma@voltbank.com.au

## License

ReplaceRootViewController is available under the MIT license. See the LICENSE file for more info.
