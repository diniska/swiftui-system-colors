# SwiftUI System Colors

Use standard **system colors** from **SwiftUI** on iOS, macOS or tvOS.

Currently, SwiftUI doesn't provide access to standard system colors, so you can find some sort of color conversion (`Color(UIColor.label)`) in almost any SwiftUI project. This library focusing on bringing all the system colors to SwiftUI so you no longer need to write the conversion manually every time.

Benefits of using `SystemColors` package dependency in your project compared to custom implementation or copy-pasting:

* Receive **updates** soon after a system new color is introduced,
* Standardised **naming** for iOS and macOS so that it is always `Color.label` instead of iOS's `UIColor.label` and macOS's `NSColor.labelColor`
* All the **compatibility** checks like `@available(iOS 13.0, *)` or `#if canImport(UIKit)` are implemented by the package and maintained by the community - less chance to introduce an error in one of the platforms support.


## How to use

### Step 1

Add a dependency using Swift Package Manager to your project: [https://github.com/diniska/swiftui-system-colors](https://github.com/diniska/swiftui-system-colors)

### Step 2

Import the dependency

```swift
import SystemColors
```

### Step 3

Use system colors from SwiftUI the same way you do with `UIColor` or `NSColor`:

```swift
Rectangle()
	.background(Color.label)
```


## Contribution

Please, open a pull request or an issue if you find that one or the other color is missing or represented in a wrong way. 

Please, only add system colors to this package. We only provide convenient interfaces without making a decision about how some colors should look.
For example, if there is no color `systemFill` provided by macOS - we don't provide it on macOS either, but for iOS, it exists and we provide that color on iOS.

If you have ideas of how to better test the provided bridging code - please add an issue with the description of your idea or add a pull request with the implementation.

Please, keep the similar code style if you propose a change to the package. Current code style has the next benefits:

* Easy to edit with multiple cursors
* Easy to add new colors with documentation by copying the documentation from Xcode and using multiple cursors
* Providing relevant links to the parts of the standard documentation.
