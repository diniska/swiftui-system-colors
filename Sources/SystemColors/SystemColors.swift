#if canImport(SwiftUI) && canImport(Combine) && (arch(arm64) || arch(x86_64))
// https://stackoverflow.com/a/61954608
import SwiftUI

#if canImport(UIKit)
import UIKit
private typealias PlatformColor = UIColor
#elseif canImport(AppKit)
import AppKit
private typealias PlatformColor = NSColor
#endif

#if !os(watchOS) // All the methods below are not availalbe for WatchOS at the time of writing

// MARK: - Adaptable colors
// Links to standard colors documentation
// Platform | Reference
// ---------|-----------
// iOS      | https://developer.apple.com/documentation/uikit/uicolor/standard_colors
// OSX      | https://developer.apple.com/documentation/appkit/nscolor/standard_colors
@available(iOS 13.0, macOS 10.15, *)
public extension Color {
    ///A blue color that automatically adapts to the current trait environment.
    static var systemBlue: Color { Color(PlatformColor.systemBlue) }
    ///A brown color that automatically adapts to the current trait environment.
    static var systemBrown: Color { Color(PlatformColor.systemBrown) }
    ///A cyan color that automatically adapts to the current trait environment.
    @available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
    static var systemCyan: Color { Color(PlatformColor.systemCyan) }
    ///A green color that automatically adapts to the current trait environment.
    static var systemGreen: Color { Color(PlatformColor.systemGreen) }
    ///An indigo color that automatically adapts to the current trait environment.
    static var systemIndigo: Color { Color(PlatformColor.systemIndigo) }
    ///A mint color that automatically adapts to the current trait environment.
    @available(iOS 15.0, macOS 10.15, tvOS 15.0, *)
    static var systemMint: Color { Color(PlatformColor.systemMint) }
    ///An orange color that automatically adapts to the current trait environment.
    static var systemOrange: Color { Color(PlatformColor.systemOrange) }
    ///A pink color that automatically adapts to the current trait environment.
    static var systemPink: Color { Color(PlatformColor.systemPink) }
    ///A purple color that automatically adapts to the current trait environment.
    static var systemPurple: Color { Color(PlatformColor.systemPurple) }
    ///A red color that automatically adapts to the current trait environment.
    static var systemRed: Color { Color(PlatformColor.systemRed) }
    ///A teal color that automatically adapts to the current trait environment.
    static var systemTeal: Color { Color(PlatformColor.systemTeal) }
    ///A yellow color that automatically adapts to the current trait environment.
    static var systemYellow: Color { Color(PlatformColor.systemYellow) }
}

// MARK: - Adaptable Gray Colors
// Links to standard colors documentation
// Platform | Reference
// ---------|-----------
// iOS      | https://developer.apple.com/documentation/uikit/uicolor/standard_colors
// OSX      | https://developer.apple.com/documentation/appkit/nscolor/standard_colors

@available(iOS 13.0, OSX 10.15, *)
public extension Color {
    /// The standard base gray color that adapts to the environment.
    static var systemGray: Color { Color(PlatformColor.systemGray) }
}

#if canImport(UIKit) && !os(tvOS)
@available(iOS 13.0, *)
public extension Color {
    /// A second-level shade of gray that adapts to the environment.
    static var systemGray2: Color { Color(PlatformColor.systemGray2) }
    /// A third-level shade of gray that adapts to the environment.
    static var systemGray3: Color { Color(PlatformColor.systemGray3) }
    /// A fourth-level shade of gray that adapts to the environment.
    static var systemGray4: Color { Color(PlatformColor.systemGray4) }
    /// A fifth-level shade of gray that adapts to the environment.
    static var systemGray5: Color { Color(PlatformColor.systemGray5) }
    /// A sixth-level shade of gray that adapts to the environment.
    static var systemGray6: Color { Color(PlatformColor.systemGray6) }
}
#endif

// MARK: - UI Element Colors
// Links to standard colors documentation
// Platform | Reference
// ---------|-----------
// iOS      | https://developer.apple.com/documentation/uikit/uicolor/ui_element_colors
// OSX      | https://developer.apple.com/documentation/appkit/nscolor/ui_element_colors

#if canImport(UIKit)
@available(iOS 13.0, *)
public extension Color {
    // MARK: Label Colors
    /// The color for text labels that contain primary content.
    static var label: Color { Color(PlatformColor.label) }
    /// The color for text labels that contain secondary content.
    static var secondaryLabel: Color { Color(PlatformColor.secondaryLabel) }
    /// The color for text labels that contain tertiary content.
    static var tertiaryLabel: Color { Color(PlatformColor.tertiaryLabel) }
    /// The color for text labels that contain quaternary content.
    static var quaternaryLabel: Color { Color(PlatformColor.quaternaryLabel) }

    // MARK: Fill Colors
    /// An overlay fill color for thin and small shapes.
    @available(tvOS, unavailable)
    static var systemFill: Color { Color(PlatformColor.systemFill) }
    /// An overlay fill color for medium-size shapes.
    @available(tvOS, unavailable)
    static var secondarySystemFill: Color { Color(PlatformColor.secondarySystemFill) }
    /// An overlay fill color for large shapes.
    @available(tvOS, unavailable)
    static var tertiarySystemFill: Color { Color(PlatformColor.tertiarySystemFill) }
    /// An overlay fill color for large areas that contain complex content.
    @available(tvOS, unavailable)
    static var quaternarySystemFill: Color { Color(PlatformColor.quaternarySystemFill) }

    // MARK: Text Colors
    /// The color for placeholder text in controls or text views.
    static var placeholderText: Color { Color(PlatformColor.placeholderText) }
    // MARK: Standard Content Background Colors
    /// Use these colors for standard table views and designs that have a white primary background in a light environment.
    /// The color for the main background of your interface.
    @available(tvOS, unavailable)
    static var systemBackground: Color { Color(PlatformColor.systemBackground) }
    /// The color for content layered on top of the main background.
    @available(tvOS, unavailable)
    static var secondarySystemBackground: Color { Color(PlatformColor.secondarySystemBackground) }
    /// The color for content layered on top of secondary backgrounds.
    @available(tvOS, unavailable)
    static var tertiarySystemBackground: Color { Color(PlatformColor.tertiarySystemBackground) }
    // MARK: Grouped Content Background Colors
    /// Use these colors for grouped content, including table views and platter-based designs.
    /// The color for the main background of your grouped interface.
    @available(tvOS, unavailable)
    static var systemGroupedBackground: Color { Color(PlatformColor.systemGroupedBackground) }
    /// The color for content layered on top of the main background of your grouped interface.
    @available(tvOS, unavailable)
    static var secondarySystemGroupedBackground: Color { Color(PlatformColor.secondarySystemGroupedBackground) }
    /// The color for content layered on top of secondary backgrounds of your grouped interface.
    @available(tvOS, unavailable)
    static var tertiarySystemGroupedBackground: Color { Color(PlatformColor.tertiarySystemGroupedBackground) }

    // MARK: Separator Colors
    /// The color for thin borders or divider lines that allows some underlying content to be visible.
    static var separator: Color { Color(PlatformColor.separator) }
    /// The color for borders or divider lines that hides any underlying content.
    static var opaqueSeparator: Color { Color(PlatformColor.opaqueSeparator) }

    // MARK: Link Color
    /// The color for links.
    static var link: Color { Color(PlatformColor.link) }

    // MARK: Nonadaptable Colors
    /// The nonadaptable system color for text on a light background.
    @available(tvOS, unavailable)
    static var darkText: Color { Color(PlatformColor.darkText) }
    /// The nonadaptable system color for text on a dark background.
    @available(tvOS, unavailable)
    static var lightText: Color { Color(PlatformColor.lightText) }
}
#elseif canImport(AppKit)

@available(OSX 10.15, *)
public extension Color {
    // MARK: Label Colors
    /// The primary color to use for text labels.
    static var label: Color { Color(PlatformColor.labelColor) }
    /// The secondary color to use for text labels.
    static var secondaryLabel: Color { Color(PlatformColor.secondaryLabelColor) }
    /// The tertiary color to use for text labels.
    static var tertiaryLabel: Color { Color(PlatformColor.tertiaryLabelColor) }
    /// The quaternary color to use for text labels and separators.
    static var quaternaryLabel: Color { Color(PlatformColor.quaternaryLabelColor) }

    // MARK: Text Colors
    /// The color to use for text.
    static var text: Color { Color(PlatformColor.textColor) }
    /// The color to use for placeholder text in controls or text views.
    static var placeholderText: Color { Color(PlatformColor.placeholderTextColor) }
    /// The color to use for selected text.
    static var selectedText: Color { Color(PlatformColor.selectedTextColor) }
    /// The color to use for the background area behind text.
    static var textBackground: Color { Color(PlatformColor.textBackgroundColor) }
    /// The color to use for the background of selected text.
    static var selectedTextBackground: Color { Color(PlatformColor.selectedTextBackgroundColor) }
    /// The color to use for the keyboard focus ring around controls.
    static var keyboardFocusIndicator: Color { Color(PlatformColor.keyboardFocusIndicatorColor) }
    /// The color to use for selected text in an unemphasized context.
    static var unemphasizedSelectedText: Color { Color(PlatformColor.unemphasizedSelectedTextColor) }
    /// The color to use for the text background in an unemphasized context.
    static var unemphasizedSelectedTextBackground: Color { Color(PlatformColor.unemphasizedSelectedTextBackgroundColor) }

    // MARK: Content Colors
    /// The color to use for links.
    static var link: Color { Color(PlatformColor.linkColor) }
    /// The color to use for separators between different sections of content.
    static var separator: Color { Color(PlatformColor.separatorColor) }
    /// The color to use for the background of selected and emphasized content.
    static var selectedContentBackground: Color { Color(PlatformColor.selectedContentBackgroundColor) }
    /// The color to use for selected and unemphasized content.
    static var unemphasizedSelectedContentBackground: Color { Color(PlatformColor.unemphasizedSelectedContentBackgroundColor) }

    // MARK: Menu Colors
    /// The color to use for the text in menu items.
    static var selectedMenuItemText: Color { Color(PlatformColor.selectedMenuItemTextColor) }

    // MARK: Table Colors
    /// The color to use for the optional gridlines, such as those in a table view.
    static var grid: Color { Color(PlatformColor.gridColor) }
    /// The color to use for text in header cells in table views and outline views.
    static var headerText: Color { Color(PlatformColor.headerTextColor) }

    // MARK: Control Colors
    /// The user's current accent color preference.
    static var controlAccent: Color { Color(PlatformColor.controlAccentColor) }
    /// The color to use for the flat surfaces of a control.
    static var control: Color { Color(PlatformColor.controlColor) }
    /// The color to use for the background of large controls, such as scroll views or table views.
    static var controlBackground: Color { Color(PlatformColor.controlBackgroundColor) }
    /// The color to use for text on enabled controls.
    static var controlText: Color { Color(PlatformColor.controlTextColor) }
    /// The color to use for text on disabled controls.
    static var disabledControlText: Color { Color(PlatformColor.disabledControlTextColor) }
    /// The color to use for the face of a selected control—that is, a control that has been clicked or is being dragged.
    static var selectedControl: Color { Color(PlatformColor.selectedControlColor) }
    /// The color to use for text in a selected control—that is, a control being clicked or dragged.
    static var selectedControlText: Color { Color(PlatformColor.selectedControlTextColor) }
    /// The color to use for text in a selected control.
    static var alternateSelectedControlText: Color { Color(PlatformColor.alternateSelectedControlTextColor) }
    /// The patterned color to use for the background of a scrubber control.
    static var scrubberTexturedBackground: Color { Color(PlatformColor.scrubberTexturedBackground) }

    // MARK: Window Colors
    /// The color to use for the window background.
    static var windowBackground: Color { Color(PlatformColor.windowBackgroundColor) }
    /// The color to use for text in a window's frame.
    static var windowFrameText: Color { Color(PlatformColor.windowFrameTextColor) }
    /// The color to use in the area beneath your window's views.
    static var underPageBackground: Color { Color(PlatformColor.underPageBackgroundColor) }

    // MARK: Highlights and Shadows
    /// The highlight color to use for the bubble that shows inline search result values.
    static var findHighlight: Color { Color(PlatformColor.findHighlightColor) }
    /// The color to use as a virtual light source on the screen.
    static var highlight: Color { Color(PlatformColor.highlightColor) }
    /// The color to use for virtual shadows cast by raised objects on the screen.
    static var shadow: Color { Color(PlatformColor.shadowColor) }
}

#endif // UIKit / AppKit condition

#endif // WatchOS condition

#endif // SwiftUI availability condition
