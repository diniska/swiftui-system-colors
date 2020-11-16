# SwiftUI System Colors

Use standard **system colors** from **SwiftUI** on iOS, macOS or tvOS.

Currently, SwiftUI doesn't provide access to standard system colors, so you can find some sort of color convertion (`Color(UIColor.label)`) in almost any SwiftUI project. This library focusing on bringing all the system colors to SwiftUI so you no longer need to write the conversion manually every time.


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

Please, keep the similar code style if you propose a change to the package. Current code style has the next benefits:

* Easy to edit with multiple cursors
* Easy to add new colors with documentation by copying the documentation from Xcode and using multiple cursors
* Providing relevant links to the parts of the standard documentation.
